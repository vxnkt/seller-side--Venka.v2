import 'package:flutter/material.dart';
import 'order_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OrderPage(),
    );
  }
}

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<Map<String, dynamic>> activeOrders = [
    {'name': 'Product A', 'quantity': 3},
    {'name': 'Product B', 'quantity': 2},
    {'name': 'Product C', 'quantity': 5},
    {'name': 'Product D', 'quantity': 1},
    {'name': 'Product E', 'quantity': 4},
  ];

  final List<Map<String, dynamic>> pendingOrders = [
    {'name': 'Product X', 'quantity': 2},
    {'name': 'Product Y', 'quantity': 1},
    {'name': 'Product Z', 'quantity': 3},
    {'name': 'Product W', 'quantity': 4},
    {'name': 'Product V', 'quantity': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Orders',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 0, 0),
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(
                        text: 'Active Orders',
                      ),
                      Tab(text: 'Pending Orders'),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Tab 1: Active Orders
                        ListView.builder(
                          itemCount: activeOrders.length,
                          itemBuilder: (context, index) {
                            return buildOrderListItem(
                                activeOrders[index], index);
                          },
                        ),
                        // Tab 2: Pending Orders
                        ListView.builder(
                          itemCount: pendingOrders.length,
                          itemBuilder: (context, index) {
                            return buildOrderListItem(
                                pendingOrders[index], index);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOrderListItem(Map<String, dynamic> order, int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OrderDetails()));
          print('${index + 1} is tapped');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index.isEven
                ? Color.fromARGB(255, 234, 229, 248)
                : Color.fromARGB(255, 229, 224, 250),
          ),
          child: ListTile(
            title: Text(
              'Order ${index + 1}',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Product\n${order['name']}\n${order['name']}\n${order['name']}',
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Quantity\n   ${order['quantity']}\n   ${order['quantity']}\n   ${order['quantity']}',
                  style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
