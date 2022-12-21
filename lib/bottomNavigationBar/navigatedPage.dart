import 'package:flutter/material.dart';

class NavigatedPage extends StatelessWidget {
  String title;
  NavigatedPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
