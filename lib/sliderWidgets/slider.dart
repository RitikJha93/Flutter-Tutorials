import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import './design.dart';

class MySlider extends StatelessWidget {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CarouselSlider(
            unlimitedMode: true,
            slideTransform: const CubeTransform(),
            children: [
              Design(color: Colors.pink.shade300),
              Design(color: Colors.brown.shade300),
              const Design(color: Colors.deepPurple),
            ]),
      ),
    );
  }
}
