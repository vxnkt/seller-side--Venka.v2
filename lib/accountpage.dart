import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,50,20,50),
        child: Column(
          children: [
            Material(
              elevation: 4,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/images/download.png"),
                radius: 100,
              ),
            ),
            SizedBox(height: 10,),
            Text("John Wick", style: TextStyle(fontSize: 20),),
            Divider(),
            Text("John Wick"),
            Text("John Wick"),
            Text("John Wick"),
            Text("John Wick"),
            Divider(),
            Text("John Wick"),
            Text("John Wick"),
            Text("John Wick"),
            Text("John Wick"),
            Text("John Wick"),
          ],
        ),
      ),
    );
  }
}
