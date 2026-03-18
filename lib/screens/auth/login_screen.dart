import 'package:flutter/material.dart';
import 'package:task_management/constant/static_function.dart';
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
        Navigator.pushNamed(context, '/home');
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              goBackButton(() {
                Navigator.pop(context);
              }),
              const SizedBox(height: 30),

              const Text(
                "Enter your existing login credentials.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 30),

              appTextfield(
                hintText: "baker.davis@melanation.com",
                controller: eamilController,
              ),

              const SizedBox(height: 16),

              appTextfield(
                controller: passwordController,
                hintText: "Enter password",
                obscureText: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Forget Password?",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),

              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Align(
                  alignment: Alignment.center,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "If you don't have an account? SignUp",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const Spacer(),
              appButton('Continue', loginHandler),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
