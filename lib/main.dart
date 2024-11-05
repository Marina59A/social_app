// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/common/services/custom_bloc_observer.dart';
import 'package:social_app/common/services/git_it_service.dart';
import 'package:social_app/common/utils/primary_colors.dart';
import 'package:social_app/features/createPost/presentation/views/create_post_view.dart';
import 'package:social_app/features/onBoarding/presentation/view/onBoarding_view.dart';
import 'package:social_app/features/authentication/presentation/view/signUp_view.dart';
import 'package:social_app/features/authentication/presentation/view/signIn_view.dart';
import 'package:social_app/features/splashScreen/presentation/view/splashScreen.dart';
import 'package:social_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGitIt();
  runApp(const SocialApp());
}

class SocialApp extends StatefulWidget {
  const SocialApp({super.key});

  @override
  State<SocialApp> createState() => _SocialAppState();
}

class _SocialAppState extends State<SocialApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socail App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoardingView.id: (context) => const OnBoardingView(),
        SignInView.id: (context) => const SignInView(),
        SignUpView.id: (context) => const SignUpView(),
        CreatePostView.id: (context) => const CreatePostView(),
      },
      initialRoute: CreatePostView.id,
    );
  }
}
