import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/common/utils/primary_colors.dart';
import 'package:social_app/common/utils/widgets/custom_button.dart';
import 'package:social_app/common/utils/widgets/custom_textField.dart';
import 'package:social_app/features/authentication/presentation/cuibts/signup_cubit/signup_cubit.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_DefaultTabController.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_appBar.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_divider.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_register_buttons.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName, email, password, confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 54),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 40,
            ),
            const CustomDefaultTabController(),
            const SizedBox(
              height: 35,
            ),
            Column(
              children: [
                CustomTextFormField(
                  onSaved: (value) {
                    userName = value!;
                  },
                  labelText: "Your Full Name",
                  hintText: "your name",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  labelText: "E-mail/Phone",
                  hintText: "type your E-mail/Phone",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  obscureText: true,
                  onSaved: (value) {
                    password = value!;
                  },
                  labelText: "Password",
                  hintText: "type your password",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  obscureText: true,
                  onSaved: (value) {
                    confirmPassword = value!;
                  },
                  labelText: "Confirm Password",
                  hintText: "Tetype your password",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                    title: "Join Now",
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                                userName, email, password, confirmPassword);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                const CustomDivider(
                  text: "Or sign up with",
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomRegisterButtons(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "By Using this app you agree with the",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    " Terms of Service",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
