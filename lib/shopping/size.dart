import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class ShoeSize extends StatelessWidget {
  final String shoeSize;
  const ShoeSize({required this.shoeSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: shoeSize == '42' ? Colors.white : Colors.transparent),
      child: Center(
        child: Text(
          shoeSize,
          style: TextStyle(
              color: shoeSize == '42' ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
