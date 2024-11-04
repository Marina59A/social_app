// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app/features/splashScreen/presentation/widgets/splashScreen_item.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenItem(),
    );
  }
}
