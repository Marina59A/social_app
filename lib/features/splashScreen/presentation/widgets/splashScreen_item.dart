// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/features/onBoarding/presentation/view/onBoarding_view.dart';

class SplashScreenItem extends StatefulWidget {
  const SplashScreenItem({super.key});

  @override
  State<SplashScreenItem> createState() => _SplashScreenItemState();
}

class _SplashScreenItemState extends State<SplashScreenItem> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 68,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 191.28,
          ),
          Image.asset(
            'assets/images/onlineWorld.png',
            width: 284.6,
            height: 285.79,
          ),
          const SizedBox(
            height: 107,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Frame 70.png',
                width: 48,
                height: 47,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/Frame.png',
                width: 180,
                height: 25,
              ),
            ],
          ),
          const SizedBox(
            height: 107,
          ),
        ],
      ),
    );
  }

  void executeNavigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, OnBoardingView.id);
      },
    );
  }
}
