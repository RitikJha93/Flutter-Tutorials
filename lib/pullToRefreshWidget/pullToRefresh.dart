import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class PullToRefresh extends StatelessWidget {
  const PullToRefresh({super.key});

  Future<void> handleRefresh() async {
    return await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: LiquidPullToRefresh(
        onRefresh: handleRefresh,
        color: Colors.deepPurple,
        backgroundColor: Colors.deepPurple[200],
        springAnimationDurationInMilliseconds: 500,
        animSpeedFactor: 1.5,
        height: 200,
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [1, 2, 3]
                .map((e) => Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepPurple),
                      height: 200,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
