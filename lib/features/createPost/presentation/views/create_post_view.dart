// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_app/features/createPost/presentation/widget/create_post_item.dart';

class CreatePostView extends StatelessWidget {
  const CreatePostView({super.key});
  static String id = "CreatePost";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Positioned(
              top: 0,
              left: 0,
              //right: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.03),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
            CreatePostItem(),
          ],
        ),
      ),
    );
  }
}
