import 'package:flutter/material.dart';
import 'dart:math' as math;

class ContactList extends StatelessWidget {
  final String name;
  final String day;
  const ContactList(this.name, this.day, {super.key});

  @override
  Widget build(BuildContext context) {
    Color bgColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          name.substring(0, 1),
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: bgColor,
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white70, fontSize: 18),
      ),
      subtitle: Text(
        day,
        style: TextStyle(color: Colors.white70, fontSize: 13),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            color: Colors.white70,
          )),
    );
  }
}
