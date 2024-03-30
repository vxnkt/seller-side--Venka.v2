// ignore_for_file: camel_case_types,


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seller_side_uo/analyticspage.dart';
import 'package:seller_side_uo/constants.dart';
import 'package:seller_side_uo/extrainfo.dart';
import 'package:seller_side_uo/homepage.dart';
import 'dart:ui';

import 'package:seller_side_uo/inventorypage.dart';

import 'orders.dart';


class profilepage extends StatefulWidget  {
   profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      automaticallyImplyLeading: false, 
      toolbarHeight: 85,
      flexibleSpace: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Image.asset(
              'assets/images/logo_neww.png',
             width: 319, // Adjust the width as needed
              height: 75, // Adjust the height as needed
            ),
          ],
        ),
      ),
      actions: [
      ],
    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.infinity,
          // height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                SizedBox(height: 10),
                const Text(
                  "  My Account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(i: 3)));
                  },
                  child: Card(

                    color: const Color.fromRGBO(18, 84, 150, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Padding(
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
                                      child: Material(
                                        elevation: 10,
                                        shape: CircleBorder(),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            "assets/images/download.png",
                                          ),
                                          radius: 40,
                                        ),
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
                            "John Wick",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            'VDK303',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            'johnwick@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                                color: Colors.white
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
                const SizedBox(height: 30,),

                Stack(
                    clipBehavior: Clip.hardEdge,
                    children: [
                      Positioned.fill(child:
                      CustomPaint(
                        painter: CrossPainter(),
                      )
                      ),
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(), // Disable grid scrolling
                          crossAxisCount: 2,
                          children:  [
                            CustomButton(icon: Icons.shopping_cart, text: 'My Orders',onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(i: 2,)));
                            }),
                            CustomButton(icon: Icons.analytics, text: 'Analytics',onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(i: 1)));}),
                            CustomButton(icon: Icons.edit, text: 'My Inventory',onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> InventoryPage()));}),
                            CustomButton(icon: Icons.person, text: 'Edit Profile',onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtraInfo()));},),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

class InfoPage {
}


class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0), // Add padding to create space between buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Change to MainAxisAlignment.start
          children: [
            Icon(icon, size: 60.0), // Adjust icon size as needed
            SizedBox(height: 4.0), // Adjust the vertical spacing between the icon and text
            Text(text, style: TextStyle(fontSize: 15),),
          ],
        ),
      ),
    );
  }
}

class CrossPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey//Color.fromRGBO(25, 118, 210, 1)
    ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.square;

    // Draw horizontal line
    canvas.drawLine(Offset(30, size.height / 2), Offset(size.width-30, size.height / 2), paint);

    // Draw vertical line
    canvas.drawLine(Offset(size.width / 2, 10), Offset(size.width / 2, size.height-10), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}