import 'package:flutter/material.dart';

import './my_courses_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  static const routeName = '/nav-bar';
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  var selectedIndex = 0;
  List<Widget> screens = [
    MyCoursesScreen(),
    Center(),
    Center(),
    Center(),
    Center(),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: theme.primaryColor,
          indicatorColor: Colors.pink.shade700,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
        child: NavigationBar(
          height: 70,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) =>
              setState(() => selectedIndex = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.card_travel,
                color: Colors.white,
              ),
              label: 'Courses',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              label: 'Connect',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.book,
                color: Colors.white,
              ),
              label: 'Files',
            ),
          ],
        ),
      ),
    );
  }
}
