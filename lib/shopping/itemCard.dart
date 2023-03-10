import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shopping/Shoes.dart';

class ItemCard extends StatelessWidget {
  final String tag;
  final String image;
  const ItemCard({super.key, required this.tag, required this.image});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: (() {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => Shoes(image: image, tag: tag)));
        }),
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 10,
                    color: Colors.grey.shade400)
              ],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Sneakers',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Nike',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  )),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Center(
                      child: Icon(Icons.favorite_border),
                    ),
                  ),
                ],
              ),
              const Text('100\$',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
