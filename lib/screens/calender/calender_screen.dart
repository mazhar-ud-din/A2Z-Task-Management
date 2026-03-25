import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/app_header.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  List<DateTime> dates = List.generate(
    10,
    (index) => DateTime.now().add(Duration(days: index)),
  );

  int selectedIndex = 2;

  String _getMonth(DateTime date) {
    return [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ][date.month - 1];
  }

  String _getDay(DateTime date) {
    return ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][date.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              appHeader(() {
                Navigator.pop(context);
              }),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(dates.length, (index) {
                    final date = dates[index];
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 70,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.primaryColor
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _getMonth(date),
                              style: TextStyle(
                                color: isSelected
                                    ? AppColors.whiteColor
                                    : Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              date.day.toString(),
                              style: TextStyle(
                                color: isSelected ? AppColors.whiteColor : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              _getDay(date),
                              style: TextStyle(
                                color: isSelected
                                    ? AppColors.whiteColor
                                    : Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildChip('All'),
                    _buildChip('To Do'),
                    _buildChip('In Progress'),
                    _buildChip('Pending'),
                    _buildChip('Declined'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              _buildTask(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildChip(String title) {
  return Container(
    margin: const EdgeInsets.only(right: 12),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Text(
      title,
      style: const TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700,
        fontFamily: 'CustomSans',
      ),
    ),
  );
}

Widget _buildTask() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Grocery shopping app design',
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w700,
                fontFamily: 'CustomSans',
              ),
            ),
            Container(
              width: 30,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 164, 191),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.badge, color: Colors.pink, size: 20.0),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Market Research',
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'CustomSans',
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.black),
                SizedBox(width: 5),
                Text(
                  '10:00 AM',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'CustomSans',
                  ),
                ),
              ],
            ),
            Container(
              width: 50,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'Done',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
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
