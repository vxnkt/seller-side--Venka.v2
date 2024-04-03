
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
// import "package:google_maps_flutter/google_maps_flutter.dart";
import 'package:latlong2/latlong.dart' as LatLng;
import 'package:seller_side_uo/profilepage.dart';

import 'analyticspage.dart';
import 'dart:math' as Math;
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
    );
  }
  @override
  Widget build(BuildContext context) {
    final LatLng.LatLng startPoint = LatLng.LatLng(13.3461, 74.7965);
    final LatLng.LatLng endPoint =  LatLng.LatLng(13.347492, 74.793040);
    final double markerOffset = 0.000245;
    final double distance=calculateDistance(startPoint, endPoint);

    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        scrolledUnderElevation: 5,
        surfaceTintColor: Colors.white,
        title: const Text('Order Details', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 9,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Stack(
                      children:[ Container(
                        child: FlutterMap(
                          options:  MapOptions(
                            initialCenter: LatLng.LatLng((startPoint.latitude+endPoint.latitude)/2, (startPoint.longitude+endPoint.longitude)/2),
                            initialZoom: 17.0,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                              subdomains: const ['a', 'b', 'c'],
                            ),
                            MarkerLayer(markers: [
                              Marker(point:startPoint, child: Icon(Icons.location_on, color: Colors.black, size: 40,),),
                              Marker(point:endPoint, child: Icon(Icons.location_on, color: Colors.red, size: 40,),)
                            ]
                            ),
                            PolylineLayer(polylines: [
                              Polyline(
                                  points: [
                                    LatLng.LatLng(startPoint.latitude-markerOffset, startPoint.longitude),
                                    LatLng.LatLng(endPoint.latitude - markerOffset, endPoint.longitude+0.00007),
                                  ],
                                color: Colors.lightBlue,
                                strokeWidth: 5.0,
                              )
                            ]),
                            MarkerLayer(markers: [
                              Marker(
                                width: 80,
                                height: 40,
                                point: calculateMiddlePoint(startPoint,endPoint),
                                  child:
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white.withOpacity(0.9),
                                           borderRadius: BorderRadius.circular(10)
                                         ),
                                           child:Center(
                                             child: Text('${distance.toStringAsFixed(1)}km', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold,),
                                             ),
                                           ),
                                       )
                              )
                            ])
                          ],
                        ),
                      ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            child: SingleChildScrollView(
                            child: DataTable(
                            columns: [
                            DataColumn(label: Text('Order')),
                            DataColumn(label: Text('Product Name')),
                            DataColumn(label: Text('Quantity')),
                            ],
                            rows: orders.map((order) {
                            return DataRow(cells: [
                            DataCell(Text('1',)), // Replace '1' with your actual order number
                            DataCell(Text(order['name'].toString())),
                            DataCell(Text(order['quantity'].toString())),
                            ]);
                            }).toList(),
                            ),
                            ),
                            height: 175,
                            width: MediaQuery.of(context).size.width, 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,

                              )
                             ]
                            ),
                          ),
                        )
                        //Positioned(child: Text)
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Text("Order Details",
          // style: TextStyle(fontSize: 20),),

          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 10,

        )
        ]
    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 73,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:   Color.fromRGBO(57, 161, 18, 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "Confirm Order",
                            style: TextStyle(

                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 73,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            ,
          ),
        ],
      ),

    );
  }
  double calculateDistance(LatLng.LatLng point1, LatLng.LatLng point2) {
    final double earthRadius = 6371.0; // Earth radius in kilometers

    double lat1 = Math.pi / 180.0 * point1.latitude;
    double lon1 = Math.pi / 180.0 * point1.longitude;
    double lat2 = Math.pi / 180.0 * point2.latitude;
    double lon2 = Math.pi / 180.0 * point2.longitude;

    double dlon = lon2 - lon1;
    double dlat = lat2 - lat1;

    double a = Math.pow(Math.sin(dlat / 2), 2) +
        Math.cos(lat1) * Math.cos(lat2) * Math.pow(Math.sin(dlon / 2), 2);
    double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    double distance = earthRadius * c;

    return distance;
  }

// Function to calculate the middle point between two geographical points
  LatLng.LatLng calculateMiddlePoint(LatLng.LatLng point1, LatLng.LatLng point2) {
    return LatLng.LatLng(
      (point1.latitude + point2.latitude) / 2+0.0003,
      (point1.longitude + point2.longitude) / 2,
    );
  }

}


