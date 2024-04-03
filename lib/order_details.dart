import "package:flutter/material.dart";
import 'package:flutter_map/flutter_map.dart';
// import "package:google_maps_flutter/google_maps_flutter.dart";
import 'package:latlong2/latlong.dart' as LatLng;
import 'package:seller_side_uo/profilepage.dart';

import 'analyticspage.dart';
import "constants.dart";
import 'orders.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final list = orders;

  Widget buildOrderListItem(Map<String, dynamic> order) {
    return ListTile(
      title: Text('Product: ${order['name']}'),
      subtitle: Text('Quantity: ${order['quantity']}'),
      // You can add more widgets here based on your requirements
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: const Text('Order Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Order No: ',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Flexible(
                      child: FlutterMap(
                        options: const MapOptions(
                          initialCenter: LatLng.LatLng(13.3524, 74.7868),
                          initialZoom: 13.0,
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                            subdomains: const ['a', 'b', 'c'],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
  flex: 3,
  child: SingleChildScrollView(
    child: DataTable(
      columns: const [
        DataColumn(label: Text('Order')),
        DataColumn(label: Text('Product Name')),
        DataColumn(label: Text('Quantity')),
      ],
      rows: orders.map((order) {
        return DataRow(cells: [
          const DataCell(Text('1')), // Replace '1' with your actual order number
          DataCell(Text(order['name'].toString())),
          DataCell(Text(order['quantity'].toString())),
        ]);
      }).toList(),
    ),
  ),
),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: Card(
                            color: const Color.fromARGB(255, 158, 240, 141),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(8.0),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Confirm",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // SizedBox(width: 5,),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 180,
                        height: 60,
                        child: Card(
                            color: const Color.fromARGB(255, 255, 98, 0),
                            elevation: 8,
                            child: Container(
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(8.0),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Cancel",
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                      onTap: () {},
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}

