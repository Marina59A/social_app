//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Frame 70.png',
          width: 28.03,
          height: 31,
        ),
        const SizedBox(
          width: 8,
        ),
        Image.asset(
          'assets/images/Frame.png',
          width: 242,
          height: 31,
        ),
      ],
    );
  }
}
