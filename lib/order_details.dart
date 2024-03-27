import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "constants.dart";

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  String orderName = '';
  int quantity = 0;
  double price = 0.0;
  int index=0;
  int amount=0;
  final list=orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 31),),
        surfaceTintColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.elliptical(30, 30),right: Radius.elliptical(30, 30)),
          color:Color.fromRGBO(216, 240, 253, 1) ,

      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      // color: Color.fromRGBO(216, 240, 253, 1)
                  ),
                  margin: EdgeInsets.all(9),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Center(
                      //   child: Text(
                      //     'Order Details:',
                      //     style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      Center(
                        child: Text(
                          'Order Number: 1232445',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                     Center(
                       child: DataTable(
                         columnSpacing: 10,
                           columns: [
                         DataColumn(label: Text('Product')),
                         DataColumn(label: Text('Quantity')),
                         DataColumn(label: Text('Each')),
                         DataColumn(label: Text('Price')),
                       ],
                           rows: [
                             DataRow(cells: [
                               DataCell(Text('${list[index]['name'].toString()}')),
                               DataCell(Text('${list[index]['quantity'].toString()}')),
                               DataCell(Text('${list[index]['price'].toString()}')),
                               DataCell(Text('250'))
                             ]),
                             DataRow(cells: [
                               DataCell(Text('${list[index+1]['name'].toString()}')),
                               DataCell(Text('${list[index+1]['quantity'].toString()}')),
                               DataCell(Text('${list[index+1]['price'].toString()}')),
                               DataCell(Text('750'))

                             ]),
                             DataRow(cells: [
                               DataCell(Text('${list[index+2]['name'].toString()}')),
                               DataCell(Text('${list[index+2]['quantity'].toString()}')),
                               DataCell(Text('${list[index+2]['price'].toString()}')),
                               DataCell(Text('200'))
                             ]),

                           ]),
                     ),
                    ],
                  ),
                ),
              )
            ),
            Expanded(
              flex: 5,
                child: Container(
                  //maps
                  child:
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(37.7749, -122.4194),
                      zoom: 11.0,
                    ),
                    markers: {
                      const Marker(
                        markerId: MarkerId('Sydney'),
                        position: LatLng(-33.86, 151.20),
                      )
                    },
                  )
                )
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  color: Colors.white
                ),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 200,
                          child: FloatingActionButton(
                              heroTag: 'wiwww2d',
                              onPressed: (){},
                              elevation: 1,
                              child: Text('Edit Order',
                                style: TextStyle(color: Colors.white
                                    ,fontWeight: FontWeight.bold),),
                              backgroundColor: Colors.blue//Color.fromRGBO(216, 240, 253, 1) ,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 200,
                          child: FloatingActionButton(
                            heroTag: 'wiwwwd',

                            onPressed: (){},
                            elevation: 1,

                            backgroundColor: Colors.blue,//Color.fromRGBO(216, 240, 253, 1) ,
                            child: Text('XYZ',
                                style: TextStyle(color: Colors.white
                                    ,fontWeight: FontWeight.bold)),

                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 200,
                          child: FloatingActionButton(
                            heroTag: 'wiwd',
                              onPressed: (){},
                              elevation: 1,
                              child: Text('Confirm',
                                style: TextStyle(color: Colors.white
                                    ,fontWeight: FontWeight.bold),),
                              backgroundColor: Colors.lightGreen//Color.fromRGBO(216, 240, 253, 1) ,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 200,
                          child: FloatingActionButton(
                            heroTag: '222',
                            onPressed: (){},
                            elevation: 1,

                            backgroundColor: Colors.redAccent,//Color.fromRGBO(216, 240, 253, 1) ,
                            child: Text('Cancel',
                                style: TextStyle(color: Colors.white
                                    ,fontWeight: FontWeight.bold)),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Text('${list[0]['name'].toString()}\n${list[0]['name'].toString()}\n${list[0]['name'].toString()}',
//                 overflow: TextOverflow.visible,),
//               Text('${list[0]['quantity']}\n${list[0]['quantity']}\n${list[0]['quantity']}'),
