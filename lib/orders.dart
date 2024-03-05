import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

import "constants.dart";
import "order_details.dart";

class OrderPage extends StatefulWidget {

  OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>{
  int indexx=0;
  final list=orders;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text('My Orders',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  //final item=orders[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16,0,16,16),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetails()));
                            print('${index+1} is tapped');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:index.isEven? const  Color.fromRGBO(216, 240, 253, 1): const Color.fromARGB(255, 239, 241, 243),

                            ),
                            child: ListTile(
                              title: Text('Order ${index+1}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),),

                              subtitle:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text('Product\n${list[index]['name'].toString()}\n${list[index]['name'].toString()}\n${list[index]['name'].toString()}',
                                    overflow: TextOverflow.visible,),
                                  SizedBox(height: 5,),
                                  Text('Quantity\n   ${list[index]['quantity']}\n   ${list[index]['quantity']}\n   ${list[index]['quantity']}'),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,)
                    ],
                  );
                }
            ),
          ),
          //current order

        ],
      ),
    );
  }
}
