import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String text;
  const Filter(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(milliseconds: 1000),
      child: AspectRatio(
        aspectRatio: 2.2 / 1,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: text == 'All' ? Colors.grey[300] : Colors.transparent,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: text == 'All' ? 20 : 17),
            ),
          ),
        ),
      ),
    );
  }
}
