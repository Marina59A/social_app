// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/features/authentication/presentation/widgets/signin_view_bloc_consumer.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});
  static String id = "SignIn";

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return signinViewBlocConsumer();
  }
}
