// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle, required this.isVisible});
  final String image, title, subtitle;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                        image,
                        width: 315.3,
                        height: 261.04,
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                   Visibility(
                    visible:isVisible ,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "skip",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
