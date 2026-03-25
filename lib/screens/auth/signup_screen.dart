import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/constant/static_function.dart';
import 'package:task_management/widgets/app_button.dart';
import 'package:task_management/widgets/app_dropdown.dart';
import 'package:task_management/widgets/app_textfield.dart';
import 'package:task_management/widgets/go_back_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController eamilController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? selectedPosition;
  bool isChecked = false;

  void signupHandler() {
    final String firstName = firstNameController.text.trim();
    final String lastName = lastNameController.text.trim();
    final String email = eamilController.text.trim();
    final String password = passwordController.text.trim();
    final String confirmPassword = confirmPasswordController.text.trim();

    if (firstName.isEmpty) {
      debugPrint('Please enter first name');
      return;
    }
    if (lastName.isEmpty) {
      debugPrint('Please enter last name');
      return;
    }
    if (email.isEmpty) {
      debugPrint('Please enter email');
      return;
    }
    if (password.isEmpty) {
      debugPrint('Please enter password');
      return;
    }
    if (confirmPassword.isEmpty) {
      debugPrint('Please enter confirmPassword');
      return;
    }
    if (password != confirmPassword) {
      debugPrint('Passwords do not match');
      return;
    }
    // AppDialogs.showWelcomeSheet(context, () {
    //   debugPrint('Clicked');
    // },(){
    //   debugPrint('Clicked111');

    // });
    Navigator.pushNamed(context, '/otp');

    // Navigator.pushNamed(context, '/login');

    debugPrint(
      'firstName==> $firstName lastName==> $lastName email==> $email password==> $password ConfirmPassword==> $confirmPassword selectedPosition==> $selectedPosition',
    );
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    eamilController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: goBackButton(() {
                    Navigator.pop(context);
                  }),
                ),
                Image.asset(
                  'lib/assets/icons/logo.png',
                  width: 100,
                  height: 100,
                ),
                const Text(
                  "Task Mangement",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'CustomSans',
                  ),
                ),
                const SizedBox(height: 30),
                appTextfield(
                  controller: firstNameController,
                  hintText: "First Name",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: AppColors.whiteColor),
                  ),
                ),
                const SizedBox(height: 16),
                appTextfield(
                  controller: lastNameController,
                  hintText: "Last Name",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: AppColors.whiteColor),
                  ),
                ),
                const SizedBox(height: 16),
                appTextfield(
                  controller: eamilController,
                  hintText: "Email",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.email, color: AppColors.whiteColor),
                  ),
                ),
                const SizedBox(height: 16),
                appTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                appTextfield(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility, color: AppColors.whiteColor),
                  ),
                ),
                const SizedBox(height: 16),

                appDropdown(
                  hintText: "Select Position",
                  items: ["Manager", "Development", "Designing"],
                  selectedValue: selectedPosition,
                  onChanged: (value) {
                    setState(() {
                      selectedPosition = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: AppColors.primaryColor,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Text(
                        "I agree with terms & conditions and privacy policy",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                appButton('Sign Up', signupHandler),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
