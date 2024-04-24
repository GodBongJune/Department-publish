import 'package:department/core/constant/color_and_size.dart';
import 'package:department/pages/alarm_page/alarm_page.dart';
import 'package:department/pages/home_page/home_page.dart';
import 'package:department/pages/my_page/my_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: [
          AlarmPage(),
          HomePage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: k3DColor,
        unselectedItemColor: k9DColor,
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "알림",
            icon: Icon(CupertinoIcons.bell),
          ),
          BottomNavigationBarItem(
            label: "홈",
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: "마이페이지",
            icon: Icon(CupertinoIcons.person),
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: size10),
        unselectedLabelStyle: TextStyle(fontSize: size10),
      ),
    );
  }
}
