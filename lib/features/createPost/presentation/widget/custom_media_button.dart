// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomMediaButton extends StatelessWidget {
  const CustomMediaButton(
      {super.key,
      required this.lableText,
      required this.icon,
      required this.onPressed});
  final String lableText;
  final Icon icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
        Text(
          '$lableText',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
