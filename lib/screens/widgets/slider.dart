import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

final List<String> sliderImages = [
  "assets/images/slider-1.jpeg",
  "assets/images/slider-2.jpeg",
  "assets/images/slider-3.jpeg",
];

class MySlider extends StatelessWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GFCarousel(
        autoPlay: true,
        reverse: false,
        aspectRatio: 16 / 9,
        // autoPlayInterval: Duration(seconds: 3),
        // autoPlayAnimationDuration: Duration(seconds: 10),
        activeIndicator: Colors.black,
        items: sliderImages.map((url) {
          return Container(
            margin: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                url,
                fit: BoxFit.cover,
                width: screenSize.width,
              ),
            ),
          );
        }).toList());
  }
}
