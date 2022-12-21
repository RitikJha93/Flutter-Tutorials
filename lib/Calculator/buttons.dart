import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String text;
  final buttonTapped;
  const MyButton(this.color, this.textColor, this.text,
      {super.key, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
