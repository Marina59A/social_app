// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/common/services/git_it_service.dart';
import 'package:social_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:social_app/features/authentication/presentation/cuibts/signup_cubit/signup_cubit.dart';

import 'package:social_app/features/authentication/presentation/widgets/signup_view_body_bloc_consumr.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});
  static String id = "SignUp";

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        body: Builder(builder: (context) {
          return const SignupViewBlocConsumer();
        }),
      ),
    );
  }
}
