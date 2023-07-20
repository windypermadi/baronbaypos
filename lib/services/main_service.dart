import 'dart:convert';
import 'dart:developer';
import 'package:baronbay_pos/providers/utils_provider.dart';
import 'package:baronbay_pos/widget/dialog_view.dart';
import 'package:baronbay_pos/widget/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Flutter Documentation for MainService class
//
// The MainService class is responsible for making API requests to the server.
// It provides methods for both POST and GET requests using the http package.
//
// Properties:
// - urlAPIMain: The base URL for the API endpoints.
// - urlRedirect: The complete URL for the API endpoints, constructed using the base URL and the specific endpoint.
// - token: The authentication token to be included in the request headers.
//
// Methods:
// - postAPI: Used to make HTTP POST requests to the server.
//   Parameters:
//   - context: The BuildContext of the current widget. It is required for displaying loading and error dialogs.
//   - url: The URL of the API endpoint to send the POST request to.
//   - activeLoading: A boolean flag to indicate whether to show a loading dialog during the request.
//   - body: A map of key-value pairs representing the data to be sent in the request body.
//   - client: An optional parameter to specify a custom http client for the request.
//
// - getAPI: Used to make HTTP GET requests to the server.
//   Parameters:
//   - context: The BuildContext of the current widget. It is required for displaying loading and error dialogs.
//   - url: The URL of the API endpoint to send the GET request to.
//   - body: A map of key-value pairs representing the query parameters to be included in the request.
//   - client: An optional parameter to specify a custom http client for the request.

class MainService {
  String urlAPIMain = 'https://baronbay.updateproject.my.id/';
  late String urlRedirect = '${urlAPIMain}api/';
  String token = 'Bearer ';

  Future<dynamic> postAPI(
      {required BuildContext context,
      required String url,
      required bool activetLoading,
      Map? body,
      http.Client? client}) async {
    client ??= http.Client();
    String apiHttp = urlRedirect + url;

    UtilsProvider().checkConnection(context: context);
    if (activetLoading) {
      showDialog(
          context: context,
          builder: (context) => loadingDefault(),
          barrierDismissible: false);
    }

    body?.addAll({'Token': token});

    final response = await http.post(Uri.parse(apiHttp), body: body);

    log('Url:$apiHttp\nBody\n$body\n${response.body}');

    final result = jsonDecode(response.body);

    if (response.statusCode == 400 || response.statusCode == 500) {
      showDialog(
        context: context,
        builder: (context) => dialogView(
          title: 'Error',
          content: result['error'],
          onTapOke: () {
            Navigator.pop(context);
          },
        ),
      );
      return;
    }
    if (activetLoading) {
      Navigator.pop(context);
    }

    return result;
  }

  Future<dynamic> getAPI(
      {required BuildContext context,
      required String url,
      Map<String, dynamic>? body,
      http.Client? client}) async {
    client ??= http.Client();

    body?.addAll({'Token': token});

    String queryString = Uri(queryParameters: body).query;
    String apiHttp = '$urlRedirect$url?$queryString';

    await UtilsProvider().checkConnection(context: context);

    final response = await http.get(Uri.parse(apiHttp));

    log('Url:$apiHttp\nBody\n$body\n${response.body}');

    final result = jsonDecode(response.body);

    if (response.statusCode == 400 || response.statusCode == 500) {
      showDialog(
        context: context,
        builder: (context) => dialogView(
          title: 'Error',
          content: result['error'],
          onTapOke: () {
            Navigator.pop(context);
          },
        ),
      );

      return result;
    }
  }
}
