import 'package:flutter/material.dart';
import 'package:task_management/constant/app_colors.dart';
import 'package:task_management/screens/calender/calender_screen.dart';
import 'package:task_management/screens/expense/expense_screen.dart';
import 'package:task_management/screens/home/home_screen.dart';
import 'package:task_management/screens/leave/leave_screen.dart';
import 'package:task_management/screens/task/task_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CalenderScreen(),
    TaskScreen(),
    ExpenseScreen(),
    LeaveScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ClipRRect(
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },

            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.primaryColor,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            elevation: 5,
            iconSize: 28,
            showSelectedLabels: false,
            showUnselectedLabels: false,

            items: [
              BottomNavigationBarItem(
                icon: navIcon('lib/assets/icons/Home.png'),
                activeIcon: navIcon(
                  'lib/assets/icons/Home.png',
                  isActive: true,
                ),

                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: navIcon('lib/assets/icons/Attendant.png'),
                activeIcon: navIcon(
                  'lib/assets/icons/Attendant.png',
                  isActive: true,
                ),

                label: 'Calender',
              ),
              BottomNavigationBarItem(
                icon: navIcon('lib/assets/icons/Task.png'),
                activeIcon: navIcon(
                  'lib/assets/icons/Task.png',
                  isActive: true,
                ),

                label: 'expence',
              ),
              BottomNavigationBarItem(
                icon: navIcon('lib/assets/icons/Expense.png'),
                activeIcon: navIcon(
                  'lib/assets/icons/Expense.png',
                  isActive: true,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: navIcon('lib/assets/icons/Leave.png'),
                activeIcon: navIcon(
                  'lib/assets/icons/Leave.png',
                  isActive: true,
                ),
                label: 'leave',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget navIcon(String path, {bool isActive = false}) {
  return Image.asset(
    path,
    color: isActive ? AppColors.whiteColor : AppColors.secondaryColor,
  );
}





// import 'package:flutter/material.dart';
// import 'package:task_management/constant/app_colors.dart';
// import 'package:task_management/screens/add_project_screen.dart';
// import 'package:task_management/screens/assignTask/assign_task_screen.dart';
// import 'package:task_management/screens/calender/calender_screen.dart';
// import 'package:task_management/screens/home/home_screen.dart';
// import 'package:task_management/screens/profile/profile_screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = const [
    // HomeScreen(),
    // AssignTaskScreen(),
    // CalenderScreen(),
    // ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomAppBar(
//         color: AppColors.primaryColor,
//         shape: const CircularNotchedRectangle(), // Creates space for FAB
//         notchMargin: 6,
//         elevation: 8,
//         child: SizedBox(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               _buildNavItem(Icons.home, 'Home', 0),
//               _buildNavItem(Icons.info, 'Assign', 1),
//               const SizedBox(width: 40), // Space for FAB
//               _buildNavItem(Icons.calendar_today, 'Calendar', 2),
//               _buildNavItem(Icons.person, 'Profile', 3),
//             ],
//           ),
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           debugPrint('Center button pressed');
//           Navigator.push(context, MaterialPageRoute(builder: (context) => AddProjectScreen()));
//         },
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         child: const Icon(Icons.add, color: Colors.white, size: 30),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }

//   Widget _buildNavItem(IconData icon, String label, int index) {
//     bool isSelected = _currentIndex == index;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             color: isSelected ? Colors.blue : AppColors.whiteColor,
//             size: 24,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               color: isSelected ? Colors.blue : AppColors.whiteColor,
//               fontSize: 12,
//               fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
