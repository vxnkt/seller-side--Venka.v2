

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seller_side_uo/homepage.dart';
import 'package:seller_side_uo/inventorypage.dart';
import 'package:seller_side_uo/profilepage.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  String selectedOption = 'This Year';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          surfaceTintColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.white,
          
          title: const Text(
            "Analytics",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(i: 1)),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
              ))
              ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,0,10,0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Overview",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
            Container(
              padding: const EdgeInsets.fromLTRB(5,0,5,0),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(8),
              //border: Border.all(color: Colors.grey),
            ),

              child: DropdownButton<String>(
                value: selectedOption,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOption = newValue!;
                  });
                },
                items: <String>['This Year', 'This Month', 'This Week', 'Custom'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style: const TextStyle(fontSize: 14),),
                  );
                }).toList(),
              ),
            ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 175,
                            child: Card(
                                color: Color.fromRGBO(25, 118, 210, 1),
                                elevation: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20)),
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center, // Change to MainAxisAlignment.start
                                        children: [
                                          Icon(Icons.auto_graph_sharp, size: 60.0, color: Colors.white,), // Adjust icon size as needed
                                          SizedBox(height: 4.0), // Adjust the vertical spacing between the icon and text
                                          Text("Revenue", style: TextStyle(fontSize: 20, color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //   Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => AnalyticsPage()),
                            // );
                            },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 175,
                            child: Card(
                              color: Color.fromRGBO(12, 93, 171, 1.0),
                                elevation: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center, // Change to MainAxisAlignment.start
                                      children: [
                                        Icon(Icons.work_history, size: 60.0, color: Colors.white,), // Adjust icon size as needed
                                        SizedBox(height: 4.0), // Adjust the vertical spacing between the icon and text
                                        Text("Order History", style: TextStyle(fontSize: 20, color: Colors.white),),
                                      ],
                                 ),
                                ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InventoryPage()),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 175,
                            child: Card(
                                color: Color.fromRGBO(12, 65, 119, 1.0),
                                elevation: 8,
                                child: Container(
                                  // width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)),
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center, // Change to MainAxisAlignment.start
                                      children: [
                                        Icon(Icons.supervised_user_circle, size: 60.0, color: Colors.white
                                          ,), // Adjust icon size as needed
                                        SizedBox(height: 4.0), // Adjust the vertical spacing between the icon and text
                                        Text("User Metrics", style: TextStyle(fontSize: 20, color: Colors.white),),
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
            ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.48,
                    height: 25,
                  ),
          ],
              ),
        ),
      ),
    );
  }
}