// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/features/onBoarding/presentation/widgets/onBoarding_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnBoardingItem(
            image: 'assets/images/connectedWorld.png',
            title: 'Find Friends & Get Inspiration',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat vitae quis quam augue quam a.'),
        OnBoardingItem(
            image: "assets/images/remoteMeeting.png",
            title: "Meet Awesome People & Enjoy yourself",
            subtitle:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat vitae quis quam augue quam a."),
        OnBoardingItem(
            image: "assets/images/onlineFriends.png",
            title: "Hangout with with Friends",
            subtitle:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Erat vitae quis quam augue quam a.")
      ],
    );
  }
}
