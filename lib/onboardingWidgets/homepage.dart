import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
        backgroundColor: Colors.pink[400],
      ),
      body: const Center(
          child: Text(
        "Home page",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      )),
    );
  }
}
