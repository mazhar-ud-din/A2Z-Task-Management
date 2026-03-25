import 'package:flutter/material.dart';
import 'package:task_management/navigation/mian_navigation.dart';
import 'package:task_management/screens/auth/forget_otp_screen.dart';
import 'package:task_management/screens/auth/forget_password_screen.dart';
import 'package:task_management/screens/auth/get_started_screen.dart';
import 'package:task_management/screens/auth/login_screen.dart';
import 'package:task_management/screens/auth/otp_screen.dart';
import 'package:task_management/screens/auth/set_new_password.dart';
import 'package:task_management/screens/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'CustomSans',
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/getStarted',
      routes: {
        '/getStarted': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/otp': (context) => const OtpScreen(),
        '/forget': (context) => const ForgetPasswordScreen(),
        '/forgetOtp': (context) => const ForgetOtpScreen(),
        '/setNewPassword': (context) => const SetNewPassword(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}
