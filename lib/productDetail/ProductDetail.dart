import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,
              height: 50,
              width: double.infinity,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://electromall.net/wp-content/uploads/2020/09/Nintendo-Switch-1.jpg'),
                    fit: BoxFit.contain)),
          ),
          Container(
            height: 250,
            margin: const EdgeInsets.all(35),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Nitendo Switch',
                      style: GoogleFonts.urbanist(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                    child: Text(
                      '\$299.99',
                      style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Description',
                    style: GoogleFonts.urbanist(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                    child: Text(
                        'Get the gaming system that lets you play the games you want, wherever you are, however you like. Includes the Nintendo Switch console and Nintendo Switch dock in black, and left and right Joy-Con controllers in a contrasting gray.',
                        style: GoogleFonts.raleway(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ]),
              ],
            ),
          ),
          Container(
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
            width: double.infinity,
            child: Positioned(
                bottom: 0,
                left: 10,
                right: 10,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.card_travel),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Add to Cart',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              elevation: 1),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5),
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                          )),
                    ])),
          )
        ]),
      ),
    );
  }
}
