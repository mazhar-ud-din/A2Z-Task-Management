import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/widgets/box_container.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  "Leave Summary",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'CustomSans',
                  ),
                ),
                Text(
                  "Submit Leave.",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'CustomSans',
                  ),
                ),
                SizedBox(height: 20),

                boxContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summary of your Work",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                      Text(
                        "Your current task progress",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'CustomSans',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(child: _summaryCard('Available', '20')),
                          const SizedBox(width: 10),
                          Expanded(child: _summaryCard('Leave Used', '2')),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                boxContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.whiteColor,
                            size: 30,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '10 November 2024',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'CustomSans',
                            ),
                          ),
                        ],
                      ),
                      totalExpenseCard(),
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

Widget _summaryCard(String title, String count) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.whiteColor, width: 1.5),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'CustomSans',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          count,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'CustomSans',
          ),
        ),
      ],
    ),
  );
}

Widget totalExpenseCard() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1.5, color: AppColors.whiteColor),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leave Date',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'CustomSans',
              ),
            ),
            Text(
              '11 Nov - 13 Nov',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'CustomSans',
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Leave',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'CustomSans',
              ),
            ),
            Text(
              '2 Days',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'CustomSans',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
