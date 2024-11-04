// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/features/onBoarding/presentation/widgets/onBoarding_body_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoarding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewBody(),
    );
  }
}
