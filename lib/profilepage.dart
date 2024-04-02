// ignore_for_file: camel_case_types,


import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:seller_side_uo/accountpage.dart';
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
        resizeToAvoidBottomInset: false,

        body: Container(
        decoration: const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Untitled design.png'),
            fit: BoxFit.cover
          )
        ),
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(30,30,30,20),
          child: Stack(
            children:[ Column(
              children: [
                 SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Icon(Icons.menu_rounded,color: Colors.white,size: 25,),
                    Row(
                      children: [
                        Icon(Icons.notifications, size: 25,color: Colors.white,),
                        SizedBox(width: 10,),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountPage()));
                            },
                            child: Icon(Icons.person, size: 25,color: Colors.white,))
                      ],
                    )
                  ]
                ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Hello John", style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'Raleway',
                        ),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey[600],
                              fontFamily: 'Raleway',), // Color of the hint text
                            border: InputBorder.none, // Hide the default border
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderPage()));
                    },
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
                            child: Image.asset(
                              'assets/images/orders.png',
                              height: 75,
                              width: 75,
                            ),
                          ),
                          ListTile(
                            title: Center(child: Text('Your Orders', style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)),
                          ),
                        ],
                      ),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                    ),
                  ),
                  height: 190,
                  width: MediaQuery.of(context).size.width-50,
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> InventoryPage()));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8.0,14,8,0),
                                child: Image.asset(
                                  'assets/images/inventory.png',
                                  height: 45,
                                  width: 45,
                                ),
                              ),
                              ListTile(
                                title: Center(child: Text('Inventory', style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          ),
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                        ),
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width/2-40,
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AnalyticsPage()));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // mainAxisSize: MainAxisSize.min,
                            children:[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8.0,14,8,0),
                                child: Image.asset(
                                  'assets/images/ana.png',
                                  height: 45,
                                  width: 45,
                                ),
                              ),
                              ListTile(
                                title: Center(child: Text('Analytics', style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          ),
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                        ),
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width/2-40,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),

              ],
            ),
              // Positioned(
              //   bottom:40 ,
              //     left: 0,
              //     right: 0,
              //     child: Center(
              //
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.only(topRight: Radius.circular(70), topLeft: Radius.circular(70)),
              //       child: Container(
              //         color: Color.fromRGBO(44, 48, 162, 1.0),
              //         child: Padding(
              //           padding: const EdgeInsets.fromLTRB(16.0,8,16,8),
              //           child: Icon(Icons.add, size: 60, color: Colors.white,),
              //         )
              //       ),
              //     ),
              //   ),
              // ),
          ]
          ),
        ),
      )

    );
  }
}