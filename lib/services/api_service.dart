import 'dart:convert';

import 'package:practice_api/models/product_model.dart';
import 'package:http/http.dart' as http;
List<ProductModel> productList = [];
  Future<List<ProductModel>> getProductData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body.toString());
    print(data);

    if (response.statusCode == 200) {
      for (Map i in data) {
        ProductModel productModel = ProductModel(
            id: i['id'],
            title: i['title'],
            description: i['description'],
            category: i['category'],
            image: i['image']);

        productList.add(productModel);
      }
      return productList;
    } else {
      return productList;
    }
  }

  https://github.com/Widle-Studio/Grocery-App