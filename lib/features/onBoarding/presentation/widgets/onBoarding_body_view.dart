// ignore_for_file: annotate_overrides, file_names, prefer_const_constructors_in_immutables

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:social_app/common/utils/primary_colors.dart';
import 'package:social_app/common/utils/widgets/custom_button.dart';
import 'package:social_app/features/authentication/presentation/view/signIn_view.dart';
import 'package:social_app/features/authentication/presentation/view/signUp_view.dart';
import 'package:social_app/features/onBoarding/presentation/widgets/onBoarding_page_view.dart';

class PageViewBody extends StatefulWidget {
  PageViewBody({
    super.key,
  });

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
    });
    super.initState();
  }

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: OnBoardingPageView(
              pageController: pageController,
            ),
          ),
          DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(
                activeColor: kPrimaryColor,
                color: currentPage == 1 || currentPage == 2
                    ? kPrimaryColor
                    : Colors.grey
                ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
                title: "Join Now",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(SignUpView.id);
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(SignInView.id);
            },
            child: const Text(
              "Sign In",
              style: TextStyle(
                  color: Color(0xff5096F1),
                  fontSize: 16,
                  fontFamily: "assets/fonts/Inter_18pt-Regular.ttf"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
