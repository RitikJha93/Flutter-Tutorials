import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:flutter_tutorial/contactList/contact_list.dart';

class Contacts extends StatelessWidget {
  Contacts({super.key});

  final List<Map<String, String>> _contacts = [
    {'name': 'John', 'day': 'Mon'},
    {'name': 'Doe', 'day': 'Thu'},
    {'name': 'Smith', 'day': 'Wed'},
    {'name': 'Virat', 'day': 'Fri'},
    {'name': 'Yadav jii', 'day': 'Sun'},
    {'name': 'Dummy', 'day': 'Tue'},
    {'name': 'Gaurav', 'day': 'Sun'},
    {'name': 'Yash', 'day': 'Sun'},
    {'name': 'Papi', 'day': 'Fri'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 30, 0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeInDown(
            duration: const Duration(milliseconds: 1000),
            child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(43, 45, 52, 1)),
                      child: const TextField(
                        cursorColor: Colors.white70,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for contacts,places',
                            hintStyle:
                                TextStyle(color: Colors.white70, fontSize: 15),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white70,
                            ),
                            suffixIcon: Icon(
                              Icons.more_vert,
                              color: Colors.white70,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 700,
                      child: ListView.builder(
                        itemCount: _contacts.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (ctx, i) {
                          return ContactList(
                              _contacts[i]['name']!, _contacts[i]['day']!);
                        },
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
