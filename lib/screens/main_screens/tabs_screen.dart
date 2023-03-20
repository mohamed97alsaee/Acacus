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
      body: const Center(
        child: Text("TABS"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/profileIcon.png',
                width: size.width / 10,
                height: size.width / 10,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/notificationIcon.png',
                width: size.width / 10,
                height: size.width / 10,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/discoverIcon.png',
                width: size.width / 10,
                height: size.width / 10,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/icons/homeIcon.png',
                width: size.width / 10,
                height: size.width / 10,
              ))
        ],
      ),
    );
  }
}
