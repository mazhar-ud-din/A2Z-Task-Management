import 'package:flutter/material.dart';
import 'package:task_management/screens/auth/get_started_screen.dart';
import 'package:task_management/screens/auth/login_screen.dart';
import 'package:task_management/screens/auth/signup_screen.dart';
import 'package:task_management/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/getStarted',
      routes: {
        '/getStarted': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        // '/product': (context) => const ProductScreen(),
        // '/payment': (context) => const PaymentScreen(),
        // '/checkout': (context) => const CheckoutScreen(),
        // '/changePassword': (context) => const ChangePassword(),
        // '/main': (context) => const MainScreen(),
      },
    );
  }
}
