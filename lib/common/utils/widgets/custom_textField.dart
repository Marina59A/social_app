// ignore_for_file: sized_box_for_whitespace, file_names, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.onSaved,
    this.obscureText = false,
  });
  final String labelText, hintText;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 304,
      child: TextFormField(
        obscureText: obscureText,
        onSaved: onSaved,
        validator: (value) {
          if (value!.isEmpty) {
            return "Faild is Required";
          }
        },
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'assets/fonts/Inter_18pt-Regular.ttf',
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 199, 196, 196),
            fontSize: 16,
            fontFamily: 'assets/fonts/Inter_18pt-Regular.ttf',
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 196, 196),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 196, 196),
            ),
          ),
        ),
      ),
    );
  }
}
