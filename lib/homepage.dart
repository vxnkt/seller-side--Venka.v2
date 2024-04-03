import 'package:flutter/material.dart';
import 'package:seller_side_uo/accountpage.dart';

import 'package:seller_side_uo/profilepage.dart';

import 'analyticspage.dart';
import 'orders.dart';
class HomePage extends StatefulWidget {
  final int i;


  const HomePage({required this.i,super.key});
  @override
  State<HomePage> createState() => _HomePage();

}

class _HomePage extends State<HomePage> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    // Accessing widget properties in initState
    selectedIndex = widget.i;
  }

  final List<Widget> _pages = [
    const OrderPage(),
    profilepage(),
    const AccountPage(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: _pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 24,
            onTap: _onItemTapped,
            currentIndex: selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: const Color.fromRGBO(25, 118, 210, 1),
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedIconTheme: IconThemeData(
              size: 30
            ),
            selectedIconTheme:const  IconThemeData(
              size: 40,
            ),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Orders',
              ),

              BottomNavigationBarItem(
                icon: Center(child: Icon(Icons.home)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),

            ],
          ),
        ),
      ),
    );
  }
}