import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice_api/models/student_count_model.dart';
import 'package:practice_api/services/api_service.dart';
import 'package:http/http.dart' as http;

class StudentDataScreen extends StatelessWidget {
  const StudentDataScreen({Key? key}) : super(key: key);

  Future<StudentCountModel> getFromUrl(String urlPart) async {
    final response = await http.get(Uri.parse(MADRASA_API_URL + urlPart));
    var data;
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      print("Success");
      return StudentCountModel.fromJson(data);
    } else {
      //show error body
      print('fail');
      return StudentCountModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder<StudentCountModel>(
              future: getStudentCount(),
              builder: (context, snapshot) {
                return ListView.builder(
                    itemCount: snapshot.data!.hifzCount!.bitLength,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Text(index.toString()),
                      );
                    });
              },
            ))
          ],
        ));
  }
}
