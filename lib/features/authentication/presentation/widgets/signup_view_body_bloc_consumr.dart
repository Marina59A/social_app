import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:social_app/common/helper/const_function.dart';
import 'package:social_app/features/authentication/presentation/cuibts/signup_cubit/signup_cubit.dart';
import 'package:social_app/features/authentication/presentation/view/signIn_view.dart';
import 'package:social_app/features/authentication/presentation/widgets/signup_body.dart';

class SignupViewBlocConsumer extends StatelessWidget {
  const SignupViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.of(context).pushReplacementNamed(SignInView.id);
        }
        if (state is SignupFailure) {
          snackShow(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading ? true : false,
            child: const SignUpBody());
      },
    );
  }
}
