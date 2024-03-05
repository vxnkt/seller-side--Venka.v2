import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

import "constants.dart";


class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final list=orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('Order No: ',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),),

                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100]
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 200,
                      child: FloatingActionButton(
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
        ],
      ),
    );
  }
}

// Text('${list[0]['name'].toString()}\n${list[0]['name'].toString()}\n${list[0]['name'].toString()}',
//                 overflow: TextOverflow.visible,),
//               Text('${list[0]['quantity']}\n${list[0]['quantity']}\n${list[0]['quantity']}'),
