// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:seller_side_uo/analyticspage.dart';
import 'dart:ui';

import 'package:seller_side_uo/inventorypage.dart';

import 'orders.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Dronaid",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.shopping_cart))
        ],
        leading: Placeholder(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          // height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: Color.fromRGBO(216, 240, 253, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/images/download.png",
                                          // width: 80.0, // Adjust the size as needed
                                          // height: 80.0,,
                                        ),
                                        radius: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hello",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Your Name',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'YourName@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  OrderPage()));

                      },
                      child: SizedBox(
                        width: 150,
                        height: 140,
                        child: Card(
                            color: Color.fromARGB(255, 239, 241, 243),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "My Orders",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.edit, // Use the desired icon
                                    size: 40, // Adjust the size as needed
                                    color: Colors.blue, // Customize the color
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AnalyticsPage()),
                        );
                      },
                      child: SizedBox(
                        width: 150,
                        height: 140,
                        child: Card(
                            color: Color.fromRGBO(216, 240, 253, 1),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Analytics",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.edit, // Use the desired icon
                                    size: 40, // Adjust the size as needed
                                    color: Colors.blue, // Customize the color
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InventoryPage()),
                        );
                      },
                      child: SizedBox(
                        width: 150,
                        height: 140,
                        child: Card(
                            color: Color.fromRGBO(216, 240, 253, 1),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "My Inventory",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.edit, // Use the desired icon
                                    size: 40, // Adjust the size as needed
                                    color: Colors.blue, // Customize the color
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),

                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 150,
                        height: 140,
                        child: Card(
                            color: Color.fromARGB(255, 239, 241, 243),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.edit, // Use the desired icon
                                    size: 40, // Adjust the size as needed
                                    color: Colors.blue, // Customize the color
                                  ),
                                ],
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Emergency',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
