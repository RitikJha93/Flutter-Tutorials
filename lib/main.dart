import 'package:flutter/material.dart';
import './Calculator/calculatorWidget.dart';
import './bottomNavigationBar/bottomNavigationbar.dart';
import './pullToRefreshWidget/pullToRefresh.dart';
import './splashScreen/splashScreen.dart';
import './carouselSlider/carousel.dart';
import './onboardingWidgets/onboardingScreen.dart';
import 'sliderWidgets/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
