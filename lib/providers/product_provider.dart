import 'package:baronbay_pos/models/product_model.dart';
import 'package:baronbay_pos/services/product_service.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _product = [];

  List<ProductModel> get products => _product;

  set products(List<ProductModel> products){
    _product = products;
    notifyListeners();
  }
  
  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProduct();
      _product = products;
    } catch (e) {
      print(e);
    }
  }
}