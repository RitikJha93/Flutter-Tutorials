import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromRGBO(112, 193, 159, 1), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                child: Container(
                  height: 400,
                  child: Image.asset('assets/images/travel.png'),
                )),
            const SizedBox(
              height: 30,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 100),
                child: const Text(
                  'Easy Booking',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(112, 193, 159, 1)),
                )),
            const SizedBox(
              height: 15,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 100),
                child: const Text(
                  'All of your travel bookings all in one place with much ease and convenience',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 96, 95, 95),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 200),
                child: Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade400),
                )),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1600),
                delay: const Duration(milliseconds: 300),
                child: Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          'https://pngimg.com/uploads/google/google_PNG19635.png',
                          height: 40,
                          width: 40,
                        ),
                        const Spacer(),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade800),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 300),
                child: Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          size: 35,
                          Icons.email,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Signup with Email',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
