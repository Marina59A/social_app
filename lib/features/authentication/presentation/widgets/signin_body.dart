import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/common/utils/primary_colors.dart';
import 'package:social_app/common/utils/widgets/custom_button.dart';
import 'package:social_app/common/utils/widgets/custom_textField.dart';
import 'package:social_app/features/authentication/presentation/cuibts/signin_cubit/signin_cubit.dart';
import 'package:social_app/features/authentication/presentation/view/signUp_view.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_DefaultTabController.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_appBar.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_divider.dart';
import 'package:social_app/features/authentication/presentation/widgets/custom_register_buttons.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
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
                    email = value!;
                  },
                  labelText: "E-mail/Phone",
                  hintText: "E-mail/Phone",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    password = value!;
                  },
                  obscureText: true,
                  labelText: "Password",
                  hintText: "Enter password",
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  title: "Login",
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      context.read<SigninCubit>().SigninUser(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password ? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomDivider(text: "Or signIn with"),
                const SizedBox(
                  height: 10,
                ),
                const CustomRegisterButtons(),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(SignUpView.id);
                  },
                  child: const Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an Account?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: " Sign up",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          )
                        ],
                      ),
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
