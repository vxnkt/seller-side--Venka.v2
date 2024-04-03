import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Material(
                                  elevation: 10,
                                  shape: CircleBorder(),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/download.png",
                                    ),
                                    radius: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "John Wick",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8.0,0,8,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Personal Data'),
                      onTap: () {
                        // Handle your onTap here.
                        print('Personal Data tapped');
                      },
                    ),


                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.history),
                      title: const Text('Medical History'),
                      onTap: () {
                        // Handle your onTap here.
                        print('Medical History tapped');
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.list),
                      title: const Text('Order History'),
                      onTap: () {
                        // Handle your onTap here.
                        print('Order History tapped');
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () {
                        // Handle your onTap here.
                        print('Settings tapped');
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.question_answer),
                      title: const Text('FAQ'),
                      onTap: () {
                        // Handle your onTap here.
                        print('FAQ tapped');
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.group),
                      title: const Text('Community'),
                      onTap: () {
                        // Handle your onTap here.
                        print('Community tapped');
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.vpn_key),
                      title: const Text('License'),
                      onTap: () {
                        // Handle your onTap here.
                        print('License tapped');
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,0,15,0),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: const Icon(Icons.help),
                      title: const Text('Feel Free To ask. We are Ready to Help'),
                      onTap: () {
                        // Handle your onTap here.
                        print('Help tapped');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}