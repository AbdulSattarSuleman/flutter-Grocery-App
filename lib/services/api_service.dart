import 'dart:convert';

import 'package:practice_api/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:practice_api/models/student_count_model.dart';
import 'package:practice_api/models/user_model.dart';

List<ProductModel> productList = [];
const MADRASA_API_URL = 'https://dashboard.deatrust.org/';
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

List<UserModel> userList = [];
Future<List<UserModel>> getUserData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    for (Map i in data) {
      userList.add(UserModel.fromJson(i));
    }
    return userList;
  } else {
    return userList;
  }
}

Future<StudentCountModel> getStudentCount() async {
  final response = await http
      .get(Uri.parse('https://dashboard.deatrust.org/api/IOT/SectionCount'));

  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return StudentCountModel.fromJson(data);
  } else {
    return StudentCountModel.fromJson(data);
  }
}
// https://github.com/Widle-Studio/Grocery-App



// class ResponseObject {
//   bool IsSuccess;
// }
