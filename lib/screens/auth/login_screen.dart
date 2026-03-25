import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/constant/static_function.dart';
import 'package:task_management/widgets/app_border_button.dart';
import 'package:task_management/widgets/app_button.dart';
import 'package:task_management/widgets/app_textfield.dart';
import 'package:task_management/widgets/go_back_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController eamilController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginHandler() {
    try {
      final email = eamilController.text.trim();
      final password = passwordController.text.trim();
      if (email.isEmpty) {
        debugPrint('Please enter email');
        return;
      }

      if (!Validators.isValidEmail(email)) {
        debugPrint('Please enter a valid email');
        return;
      }
      if (password.isEmpty) {
        debugPrint('Please enter password');
        return;
      }
      debugPrint('email==> $email password==> $password');
      if (email.isNotEmpty && password.isNotEmpty) {
        Navigator.pushNamed(context, '/main');
      }
    } catch (error) {
      debugPrint('error==> $error');
    }
  }

  @override
  void dispose() {
    eamilController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  goBackButton(() {
                    Navigator.pop(context);
                  }),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'CustomSans',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign in to my account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CustomSans',
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  appTextfield(
                    hintText: "a2zcreatorz@gmail.com",
                    controller: eamilController,
                    suffixIcon: Icon(Icons.email, color: AppColors.whiteColor),
                  ),

                  const SizedBox(height: 16),

                  appTextfield(
                    controller: passwordController,
                    hintText: "Enter password",
                    obscureText: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/forget');
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 13,
                          fontFamily: 'CustomSans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  appButton('Continue', loginHandler),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Or Continue with',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  appBorderButton(
                    'Sign in With Employee ID',
                    iconButton: Icon(
                      Icons.verified_user,
                      color: AppColors.whiteColor,
                      size: 25,
                    ),
                    () {},
                  ),
                  const SizedBox(height: 20),
                  appBorderButton(
                    'Sign in With Phone',
                    () {},
                    iconButton: Icon(
                      Icons.phone,
                      color: AppColors.whiteColor,
                      size: 25,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont't have an account ?",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'CustomSans',
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign Up Here',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'CustomSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
