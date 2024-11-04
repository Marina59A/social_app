// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/features/authentication/presentation/view/signIn_view.dart';
import 'package:social_app/features/authentication/presentation/view/signUp_view.dart';

class CustomDefaultTabController extends StatelessWidget {
  const CustomDefaultTabController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        tabs: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(SignInView.id);
            },
            child: const Tab(text: "Sign In"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(SignUpView.id);
            },
            child: const Tab(text: "Sign Up"),
          ),
        ],
      ),
    );
  }
}
