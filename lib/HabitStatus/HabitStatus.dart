import 'package:flutter/material.dart';
import 'package:habitshare_dw/HabitList/HabitList.dart';

import 'package:habitshare_dw/HomePage/Habits.dart';
import 'package:habitshare_dw/HabitStatus/Reports.dart';
import 'package:habitshare_dw/Settings/Settings.dart';
import 'package:habitshare_dw/Sharing/Friends.dart';
import '../Constants/Constants.dart';

class HabitStatus extends StatefulWidget {
  const HabitStatus({super.key});

  @override
  State<HabitStatus> createState() => _HabitStatusState();
}

class _HabitStatusState extends State<HabitStatus> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    HabitList(),
    FriendsTab(),
    ReportsTab(),
    SettingsTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "Habits",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Reports",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        //backgroundColor: primaryColor,
      ),
    );
  }
}