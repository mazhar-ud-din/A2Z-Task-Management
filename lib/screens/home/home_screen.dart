import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
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
                          Text('Hello!', style: TextStyle(color: Colors.white)),
                          Text(
                            'A2Z Creatorz',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: Colors.white),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFf1561f),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your todays task almost done!',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.more_outlined, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            debugPrint('Clicking');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'View Task',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox.expand(
                                child: CircularProgressIndicator(
                                  value: 0.7,
                                  strokeWidth: 8,
                                  backgroundColor: Colors.grey.shade300,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                        Colors.black,
                                      ),
                                ),
                              ),
                              Text(
                                "${(0.7 * 100).toInt()}%",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 80,
                        //   height: 80,
                        //   child: Stack(
                        //     alignment: Alignment.center,
                        //     children: [
                        //       CircularProgressIndicator(
                        //         value: 0.7, // 0.0 to 1.0
                        //         strokeWidth: 6,
                        //         backgroundColor: Colors.grey.shade300,
                        //         valueColor: const AlwaysStoppedAnimation<Color>(
                        //           Colors.black,
                        //         ),
                        //       ),
                        //       Text(
                        //         "${(0.7 * 100).toInt()}%",
                        //         style: const TextStyle(color: Colors.white),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Text(
                        //   'View Task',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                      ],
                    ),
                  ],
                ),

                // Text('data')
                // Padding(padding: EdgeInsets.all(3), child: Text('data')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
