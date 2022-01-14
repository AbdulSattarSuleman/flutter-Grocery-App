import 'package:flutter/material.dart';
import 'package:practice_api/screens/HomePage/home_screen.dart';
import 'package:practice_api/screens/HomePage/student_data_screen.dart';
import 'package:practice_api/screens/HomePage/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDataScreen(),
    );
  }
}
