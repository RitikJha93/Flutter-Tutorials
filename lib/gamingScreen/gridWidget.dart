import 'package:flutter/material.dart';
import 'package:flutter_tutorial/gamingScreen/gridElement.dart';

class GridRow extends StatelessWidget {

  final String image1;
  final String image2;
  final String text1;
  final String text2;
  const GridRow(this.image1, this.image2,this.text1,this.text2,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GridElement(image1,text1),
            GridElement(image2,text2),
          ],
        ));
  }
}
