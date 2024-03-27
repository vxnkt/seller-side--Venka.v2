

import 'package:flutter/material.dart';
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
      appBar: AppBar(
          surfaceTintColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.white,
          
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
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const profilepage()),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
              ))
              ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,0,0),
            child: Row(
              children: [
                const Text(
                  "Overview",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.fromLTRB(5,0,5,0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
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
          const SizedBox(height: 34,),
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.48,
                        height: 280,
                        child: Card(
                            color: const Color.fromARGB(255, 239, 241, 243),
                            elevation: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(16.0),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Sales",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                    Text("xxxx Rs", style: TextStyle(fontSize: 32),),
                                  
                                ],
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
                        width: MediaQuery.of(context).size.width*0.48,
                        height: 280,
                        child: Card(
                            color: const Color.fromRGBO(216, 240, 253, 1),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(16.0),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Product Sold",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("xx Units", style: TextStyle(fontSize: 24),),
                                  
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.48,
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                      InkWell(
                        onTap: () {
                        //   Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => InventoryPage()),
                        // );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.48,
                          height: 280,
                          child: Card(
                              color: const Color.fromRGBO(216, 240, 253, 1),
                              elevation: 8,
                              child: Container(
                                // width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                padding: const EdgeInsets.all(16.0),
                                child: const Column(
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
                        width: MediaQuery.of(context).size.width*0.48,
                        height: 280,
                        child: Card(
                            color: const Color.fromARGB(255, 239, 241, 243),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(16.0),
                              child: const Column(
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
      )

    );
  }
}