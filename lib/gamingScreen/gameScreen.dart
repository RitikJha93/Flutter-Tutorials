import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_tutorial/gamingScreen/gridWidget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/user.png',
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green[800]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.star,
                                color: Colors.amber[400],
                              ),
                            ),
                            const Text(
                              '12560',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Let's\nplay and joy the game",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                const GridRow('assets/images/car.png',
                    'assets/images/basketball.png', 'Racing', 'Sport'),
                const GridRow('assets/images/dice.png',
                    'assets/images/crown.png', 'Puzzle', 'Strategy'),
                Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 35,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
                Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 35,
                      color: Colors.green.shade800.withOpacity(0.6),
                    ),
                  ),
                ),
                Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 35,
                      color: Colors.green.shade800.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
