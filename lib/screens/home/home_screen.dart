import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'lib/assets/images/profile.jpeg',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello!',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                            Text(
                              'A2Z Creatorz',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Image.asset(
                  'lib/assets/images/banner.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Today Meeting',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 25,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '2',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Your schedule for the day',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                      SizedBox(height: 15),

                      _meetingCard('Townhall Meeting'),

                      SizedBox(height: 10),

                      _meetingCard('Dashboard Report'),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Today Task',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 25,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'CustomSans',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'The tasks assigned to you for today',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                      SizedBox(height: 15),

                      _taskCard('Wiring Dashboard Analytics'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _meetingCard(String meetingTitle) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.white, width: 1.5),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.camera_alt_rounded,
                  color: AppColors.whiteColor,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  meetingTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'CustomSans',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.timer, color: AppColors.whiteColor, size: 20),

                SizedBox(width: 5),

                Text(
                  '01:30 AM - 02:00 AM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'CustomSans',
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('lib/assets/images/member.png'),
            Container(
              width: 100,
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'Join Meet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'CustomSans',
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _taskCard(String meetingTitle) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.white, width: 1.5),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.analytics_outlined,
                  color: AppColors.whiteColor,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  meetingTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'CustomSans',
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            _workStatus('In Progress'),
            SizedBox(width: 10),
            _workStatus('High'),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('lib/assets/images/member.png'),

            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: AppColors.whiteColor,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '27 April',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: AppColors.whiteColor,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _workStatus(String statusText) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white, width: 1.5),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.flag, size: 20),
        SizedBox(width: 5),
        Text(
          statusText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontFamily: 'CustomSans',
          ),
        ),
      ],
    ),
  );
}


// import 'package:flutter/material.dart';
// import 'package:task_management/constant/app_colors.dart';
// import 'package:task_management/widgets/progress_bar.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.secondaryColor,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Row(
                //       children: [
                //         ClipRRect(
                //           borderRadius: BorderRadius.circular(40),
                //           child: Image.asset(
                //             'lib/assets/images/profile.jpeg',
                //             width: 60,
                //             height: 60,
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //         SizedBox(width: 16),
                //         Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Hello!',
                //               style: TextStyle(
                //                 color: AppColors.whiteColor,
                //                 fontWeight: FontWeight.w400,
                //                 fontFamily: 'CustomSans',
                //               ),
                //             ),
                //             Text(
                //               'A2Z Creatorz',
                //               style: TextStyle(
                //                 color: AppColors.whiteColor,
                //                 fontSize: 18,
                //                 fontWeight: FontWeight.w700,
                //                 fontFamily: 'CustomSans',
                //               ),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.notifications,
                //         color: AppColors.whiteColor,
                //       ),
                //     ),
                //   ],
                // ),
//                 Container(
//                   width: double.infinity,
//                   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//                   margin: EdgeInsets.symmetric(vertical: 20),
//                   decoration: BoxDecoration(
//                     color: AppColors.primaryColor,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Your todays task almost done!',
//                             style: TextStyle(
//                               color: AppColors.whiteColor,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: 'CustomSans',
//                             ),
//                           ),
//                           InkWell(
//                             onTap: () {},
//                             child: Icon(
//                               Icons.more_outlined,
//                               color: AppColors.whiteColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton(
//                             onPressed: () {
//                               debugPrint('Clicking');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: AppColors.secondaryColor,
//                               padding: const EdgeInsets.symmetric(
//                                 vertical: 5,
//                                 horizontal: 20,
//                               ),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                             ),
//                             child: Text(
//                               'View Task',
//                               style: TextStyle(
//                                 color: AppColors.whiteColor,
//                                 fontWeight: FontWeight.w700,
//                                 fontFamily: 'CustomSans',
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 70,
//                             height: 70,
//                             child: Stack(
//                               alignment: Alignment.center,
//                               children: [
//                                 SizedBox.expand(
//                                   child: CircularProgressIndicator(
//                                     value: 0.7,
//                                     strokeWidth: 8,
//                                     backgroundColor: Colors.grey.shade300,
//                                     valueColor:
//                                         const AlwaysStoppedAnimation<Color>(
//                                           AppColors.secondaryColor,
//                                         ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "${(0.7 * 100).toInt()}%",
//                                   style: const TextStyle(
//                                     color: AppColors.whiteColor,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w700,
//                                     fontFamily: 'CustomSans',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'In Progress',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       color: AppColors.whiteColor,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: 'CustomSans',
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       projectCard(
//                         'Office Project',
//                         'Grocery shoping app design',
//                       ),
//                       SizedBox(width: 25),
//                       projectCard(
//                         'Personal Project',
//                         'Uber Eats redesign challange',
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Text(
//                       'Task Group',
//                       style: TextStyle(
//                         color: AppColors.whiteColor,
//                         fontSize: 22,
//                         fontWeight: FontWeight.w700,
//                         fontFamily: 'CustomSans',
//                       ),
//                     ),
//                     SizedBox(width: 5),
//                     Container(
//                       width: 20,
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 211, 142, 223),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Text(
//                         '4',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.purple,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w500,
//                           fontFamily: 'CustomSans',
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 listCard(
//                   'Office Project',
//                   'Uber Eats redesign challange',
//                   '23 Tasks',
//                   "${(0.7 * 100).toInt()}%",
//                 ),
//                 SizedBox(height: 20),
//                 listCard(
//                   'Personal Project',
//                   'Uber Eats redesign challange',
//                   '30 Tasks',
//                   "${(0.5 * 100).toInt()}%",
//                 ),
//                 SizedBox(height: 20),
//                 listCard(
//                   'Daily Study',
//                   'Uber Eats redesign challange',
//                   '30 Tasks',
//                   "${(0.3 * 100).toInt()}%",
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget projectCard(String title, String centerText) {
//   return Container(
//     width: 250,
//     padding: EdgeInsets.all(16.0),
//     decoration: BoxDecoration(
//       color: AppColors.primaryColor,
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: AppColors.whiteColor,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: 'CustomSans',
//               ),
//             ),
//             Container(
//               width: 30,
//               padding: EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 245, 164, 191),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Icon(Icons.badge, color: Colors.pink, size: 20.0),
//             ),
//           ],
//         ),
//         SizedBox(height: 10),
//         Text(
//           centerText,
//           style: TextStyle(
//             color: AppColors.whiteColor,
//             fontWeight: FontWeight.w500,
//             fontFamily: 'CustomSans',
//           ),
//         ),
//         SizedBox(height: 20),
//         SizedBox(
//           width: 250,
//           height: 6,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               SizedBox.expand(
//                 child: LinearProgressIndicator(
//                   value: 0.7,
//                   backgroundColor: Colors.grey.shade300,
//                   valueColor: const AlwaysStoppedAnimation<Color>(
//                     AppColors.secondaryColor,
//                   ),
//                 ),
//               ),
//               Text(
//                 "${(0.7 * 100).toInt()}%",
//                 style: const TextStyle(
//                   color: AppColors.whiteColor,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget listCard(
//   String title,
//   String centerText,
//   String subTitle,
//   String value,
// ) {
//   return Container(
//     width: double.infinity,
//     padding: EdgeInsets.all(16.0),
//     decoration: BoxDecoration(
//       color: AppColors.primaryColor,
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 30,
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 245, 164, 191),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Icon(Icons.badge, color: Colors.pink, size: 20.0),
//                 ),
//                 SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: TextStyle(
//                         color: AppColors.whiteColor,
//                         fontWeight: FontWeight.w700,
//                         fontFamily: 'CustomSans',
//                       ),
//                     ),
//                     Text(
//                       subTitle,
//                       style: TextStyle(
//                         color: AppColors.whiteColor,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'CustomSans',
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             circularProgressBar(value),
//           ],
//         ),
//       ],
//     ),
//   );
// }
