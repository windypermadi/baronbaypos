import 'dart:convert';
import 'package:baronbay_pos/models/product_model.dart';
import 'package:http/http.dart';

class ProductService {
  String baseUrl = 'https://baronbay.updateproject.my.id/api/transaksi/get_item?offset=0&limit=5&id_penempatan=5';
  
  get http => null;

  Future<List<ProductModel>> getProduct() async {
    var url = '$baseUrl';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200){
      List data = jsonDecode(response.body)['data'];
      List<ProductModel> products = [];

      for (var item in data){
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal get producta');
    }
  }
}