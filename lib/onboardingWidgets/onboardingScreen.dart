import 'package:flutter/material.dart';
import './splashScreen.dart';
import './homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool _lastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) => setState(() {
              _lastPage = (value == 2);
            }),
            children: const [
              SplashScreen(
                imgSrc: 'assets/images/book.gif',
                mainBody:
                    'Choose your favourite food of your choice by our app',
                mainText: 'Choose your favourite food',
              ),
              SplashScreen(
                imgSrc: 'assets/images/chocolate.gif',
                mainBody: 'Your food at your door step with just one click',
                mainText: 'Delicious food menu',
              ),
              SplashScreen(
                imgSrc: 'assets/images/Shawarma.gif',
                mainBody: 'We have 5k+ users reviews on our app on Play Store',
                mainText: 'We have 5000+ Reviews',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _controller.jumpToPage(2),
                  child: const Text(
                    'Skip',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                _lastPage
                    ? GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const HomePage())),
                        child: const Text(
                          'Done',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: const Text(
                          'Next',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
