import 'package:acacus/helpers/consts.dart';
import 'package:acacus/screens/main_screens/discover_screen.dart';
import 'package:acacus/screens/main_screens/home_screen.dart';
import 'package:acacus/screens/main_screens/notification_screen.dart';
import 'package:acacus/screens/main_screens/profile_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedSwitcher(
        duration: animationDuration,
        child: currentIndex == 0
            ? const ProfileScreen()
            : currentIndex == 1
                ? const NotificationScreen()
                : currentIndex == 2
                    ? const DiscoverScreen()
                    : const HomeScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/profileIcon.png',
                width: size.width / 13,
                height: size.width / 13,
                fit: BoxFit.contain,
                color:
                    currentIndex == 0 ? mainColor : mainColor.withOpacity(0.3),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/notificationIcon.png',
                width: size.width / 13,
                height: size.width / 13,
                fit: BoxFit.contain,
                color:
                    currentIndex == 1 ? mainColor : mainColor.withOpacity(0.3),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/discoverIcon.png',
                width: size.width / 13,
                height: size.width / 13,
                fit: BoxFit.contain,
                color:
                    currentIndex == 2 ? mainColor : mainColor.withOpacity(0.3),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/homeIcon.png',
                width: size.width / 13,
                height: size.width / 13,
                color:
                    currentIndex == 3 ? mainColor : mainColor.withOpacity(0.3),
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
