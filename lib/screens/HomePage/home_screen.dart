import 'package:flutter/material.dart';
import 'package:practice_api/screens/widgets/products_screen.dart';
import 'package:practice_api/screens/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MySlider(),
          ProductScreen(),
        ],
      ),
    );
  }
}
