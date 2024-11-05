// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social_app/common/utils/primary_colors.dart';
import 'package:social_app/features/createPost/presentation/widget/custom_media_button.dart';

class CreatePostItem extends StatefulWidget {
  const CreatePostItem({super.key});

  @override
  State<CreatePostItem> createState() => _CreatePostItemState();
}

class _CreatePostItemState extends State<CreatePostItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel_outlined,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Create a Post',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          'assets/images/onlineWorld.png',
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "What's on your head?",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 179, 178, 178),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomAppBar(
              elevation: 0,
              height: 350,
              color: Colors.white,
              child: ListView(
                children: [
                  CustomMediaButton(
                      lableText: 'Add A Photo',
                      icon: Icon(
                        Icons.photo,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  CustomMediaButton(
                      lableText: 'Take A Video',
                      icon: Icon(
                        Icons.video_camera_back,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  CustomMediaButton(
                      lableText: 'Add A Document',
                      icon: Icon(
                        Icons.edit_document,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  CustomMediaButton(
                      lableText: 'Background Color',
                      icon: Icon(
                        Icons.color_lens,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  CustomMediaButton(
                      lableText: 'Gif',
                      icon: Icon(
                        Icons.gif_box_outlined,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  CustomMediaButton(
                      lableText: 'Live Video',
                      icon: Icon(
                        Icons.video_call_outlined,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  CustomMediaButton(
                      lableText: 'Camera',
                      icon: Icon(
                        Icons.camera_alt,
                        size: 25,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
