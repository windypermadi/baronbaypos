import 'package:baronbay_pos/widget/dialog_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

/// A utility class to provide network connectivity checks in the application.
///
/// The `UtilsProvider` class contains a method `checkConnection` that checks
/// if the device is connected to the internet. If the device is not connected,
/// it shows a dialog to inform the user about the lack of connectivity and
/// prompts them to ensure their internet connection.
///
/// Usage:
/// ```dart
/// UtilsProvider utilsProvider = UtilsProvider();
/// try {
///   await utilsProvider.checkConnection(context: context);
///   // The device is connected to the internet, perform the desired action.
///   print('Connected to the internet.');
/// } catch (e) {
///   // An error occurred during the connectivity check, handle the error.
///   print('Error checking connectivity: $e');
/// }
/// ```
class UtilsProvider {
  /// Check the network connectivity of the device.
  ///
  /// This method is used to check if the device is connected to the internet.
  /// It takes the required parameter [context], which represents the build
  /// context of the current widget. The context is required to show the dialog
  /// to the user.
  ///
  /// The method uses the `Connectivity` class from the `connectivity` package
  /// to check the device's connectivity status. If the device is not connected
  /// to the internet (ConnectivityResult.none), it shows a dialog using the
  /// `showDialog` function. The dialog contains a title, content, and an "OK"
  /// button to dismiss the dialog.
  ///
  /// The `do-while` loop in the method ensures that the connectivity status
  /// is continuously checked until the device is connected to the internet.
  /// The loop repeatedly calls the `getConnection` and `dialog` functions
  /// until the `isConnectivity` variable is set to `true`, indicating that the
  /// device is connected.
  ///
  /// Throws an exception if an error occurs during the connectivity check.
  ///
  /// Example usage:
  /// ```dart
  /// await utilsProvider.checkConnection(context: context);
  /// ```
  Future<void> checkConnection({
    required BuildContext context,
  }) async {
    final Connectivity connectivity = Connectivity();
    late ConnectivityResult result;
    late bool isConnectivity;

    Future<ConnectivityResult> getConnection() async {
      return await connectivity.checkConnectivity();
    }

    Future<bool> dialog() async {
      if (result == ConnectivityResult.none) {
        await showDialog(
          context: context,
          builder: (context) => dialogView(
              title: 'Koneksi',
              content: 'Pastikan koneksi anda terhubung',
              onTapOke: () => Navigator.pop(context)),
        );
        return false;
      } else {
        return true;
      }
    }

    do {
      result = await getConnection();
      isConnectivity = await dialog();
    } while (!isConnectivity);
  }
}
