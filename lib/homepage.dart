import 'package:flutter/material.dart';
import 'package:seller_side_uo/accountpage.dart';
import 'package:seller_side_uo/extrainfo.dart';
import 'package:seller_side_uo/profilepage.dart';

import 'analyticspage.dart';
import 'orders.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    profilepage(),
    AnalyticsPage(),
    OrderPage(),
    AccountPage(),
    ExtraInfo()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromRGBO(25, 118, 210, 1),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(
          size: 40,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Center(child: Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_rounded),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'Help',
          ),

        ],
      ),
    );
  }
}