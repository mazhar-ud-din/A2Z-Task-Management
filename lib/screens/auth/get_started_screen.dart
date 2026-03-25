import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_border_button.dart';
import 'package:task_management/widgets/app_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('lib/assets/icons/logo.png', width: 200, height: 200),
              Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Navigate Your Work Journey Efficient & Easy",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'CustomSans',
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    textAlign: TextAlign.center,
                    "Increase your work management & career development radically",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'CustomSans',
                    ),
                  ),
                  const SizedBox(height: 50),

                  appButton('Sign In', () {
                    Navigator.pushNamed(context, '/login');
                  }),
                  const SizedBox(height: 20),
                  appBorderButton('Sign Up', () {
                    Navigator.pushNamed(context, '/signup');
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Expanded(
                  //       child: InkWell(
                  //         onTap: () {},
                  //         child: Container(
                  //           padding: EdgeInsets.symmetric(vertical: 12),
                  //           decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.grey.shade400),
                  //             borderRadius: BorderRadius.circular(20),
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Image.asset(
                  //                 'lib/assets/icons/apple.png',
                  //                 height: 24,
                  //                 width: 24,
                  //                 color: AppColors.whiteColor ,
                  //               ),
                  //               SizedBox(width: 10),
                  //               Text(
                  //                 'Apple',
                  //                 style: TextStyle(
                  //                   fontSize: 16,
                  //                   fontWeight: FontWeight.w500,
                  //                   color: AppColors.whiteColor,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),

                  //     SizedBox(width: 16),

                  //     Expanded(
                  //       child: InkWell(
                  //         onTap: () {},
                  //         child: Container(
                  //           padding: EdgeInsets.symmetric(vertical: 12),
                  //           decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.grey.shade400),
                  //             borderRadius: BorderRadius.circular(20),
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Image.asset(
                  //                 'lib/assets/icons/google.png',
                  //                 height: 24,
                  //                 width: 24,
                  //               ),
                  //               SizedBox(width: 10),
                  //               Text(
                  //                 'Google',
                  //                 style: TextStyle(
                  //                   fontSize: 16,
                  //                   fontWeight: FontWeight.w500,
                  //                   color: AppColors.whiteColor,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
