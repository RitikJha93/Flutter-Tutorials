import 'package:flutter/material.dart';
import 'package:flutter_tutorial/contactList/Contacts.dart';
import 'package:flutter_tutorial/productDetail/ProductDetail.dart';
import './animatedSigninScreen/animatedScreen.dart';
import './shopping/shoppingHomePage.dart';
import './travelApp/travelScreen.dart';
import './Calculator/calculatorWidget.dart';
import './bottomNavigationBar/bottomNavigationbar.dart';
import './pullToRefreshWidget/pullToRefresh.dart';
import './splashScreen/splashScreen.dart';
import './carouselSlider/carousel.dart';
import './onboardingWidgets/onboardingScreen.dart';
import './sliderWidgets/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetail(),
    );
  }
}
