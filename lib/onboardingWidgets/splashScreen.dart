import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final String imgSrc;
  final String mainText;
  final String mainBody;
  const SplashScreen(
      {super.key,
      required this.imgSrc,
      required this.mainText,
      required this.mainBody});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(imgSrc),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              mainText,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              mainBody,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
