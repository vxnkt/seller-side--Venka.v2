


import 'package:flutter/material.dart';
import 'package:seller_side_uo/analyticspage.dart';

import 'package:seller_side_uo/createnewpage.dart';
import 'package:seller_side_uo/profilepage.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
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
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Inventory",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CreateNewPage()),);
                    },
                    child: SizedBox(
                      width: 180,
                      height: 60,
                      child: Card(
                          color: const Color.fromARGB(255, 239, 241, 243),
                          elevation: 8,
                          child: Container(
                            // width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(8.0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Create New",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                        MaterialPageRoute(builder: (context) => const AnalyticsPage()),);
                    },
                    child: SizedBox(
                      width: 180,
                      height: 60,
                      child: Card(
                          color: const Color.fromRGBO(216, 240, 253, 1),
                          elevation: 8,
                          child: Container(
                            // width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(8.0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Analytics",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Recently Added",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  
                ),
                
              ),
              Expanded(
                child: SizedBox(
                   // Adjust the height based on your design
                  child: ListView.builder(
                    itemCount: 6, // Number of products in the list
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            // height: 120,
                            width: 150, // Adjust the width based on your design
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Product photo (You can replace the Image.network with your own image widget)
                                Image.network(
                                  'https://placehold.it/100x100', // Replace with the actual image URL
                                  height: 65,
                                  width: 65,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 18),
                                // Product details (replace with actual product details)
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.censter,
                                  children: [
                                    Text('Product abcdefghij ${index + 1}',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    // SizedBox(height: 4,),
                                    // Text('Price: \$XX.XX'),
                                    const SizedBox(height: 4,),
                                    const Text('Stock: XX units', style: TextStyle(fontSize: 18),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                          )),
              )],
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
