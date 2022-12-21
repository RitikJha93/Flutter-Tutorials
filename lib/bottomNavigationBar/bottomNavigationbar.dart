import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import './navigatedPage.dart';

class BottomNavigation extends StatefulWidget {
  int currentPage = 0;
  BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String headings = "";
  void handleTabs(index) {
    setState(() {
      widget.currentPage = index;
    });
  }

  final List<Widget> _pages = [
    NavigatedPage('Home'),
    NavigatedPage('History'),
    NavigatedPage('Search'),
    NavigatedPage('Alarm'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: SafeArea(
        child: _pages[widget.currentPage],
      ),
      bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: widget.currentPage,
          activeIconColor: Colors.white,
          circleColor: Colors.deepPurple,
          inactiveIconColor: Colors.black,
          textColor: Colors.black,
          arcHeight: 70,
          arcWidth: 90,
          tabs: [
            TabData(
              icon: Icons.home,
              title: widget.currentPage == 0 ? 'Home' : '',
              fontWeight: FontWeight.bold,
            ),
            TabData(
              icon: Icons.history,
              title: widget.currentPage == 1 ? 'History' : '',
              fontWeight: FontWeight.bold,
            ),
            TabData(
              icon: Icons.search,
              title: widget.currentPage == 2 ? 'Search' : '',
              fontWeight: FontWeight.bold,
            ),
            TabData(
              icon: Icons.alarm,
              title: widget.currentPage == 3 ? 'Alarm' : '',
              fontWeight: FontWeight.bold,
            )
          ],
          onTabChangedListener: (index) => handleTabs(index)),
    );
  }
}
