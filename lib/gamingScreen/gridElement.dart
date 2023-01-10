import 'package:flutter/material.dart';
import 'package:flutter_tutorial/gamingScreen/strategy.dart';

class GridElement extends StatelessWidget {
  final String image;
  final String title;
  const GridElement(this.image, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => Strategy()));
      },
      child: Column(
        children: [
          CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey.shade200,
              child: Image.asset(
                image,
                height: 70,
              )),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
