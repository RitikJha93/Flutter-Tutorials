import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  final Color color;
  const Design({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    const double pi = 3.14;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80',
                )),
            title: const Text(
              "John Doe",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.bar_chart_sharp,
                  color: Colors.white,
                ),
                Text(
                  'Ajay-Atul',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Image.network(
                'https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              Expanded(
                  child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        hintStyle: const TextStyle(color: Colors.white),
                        hintText: 'Send Message',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
              )),
              const Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.white,
              ),
              Transform.rotate(
                angle: 330 * pi / 180,
                child: const IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
