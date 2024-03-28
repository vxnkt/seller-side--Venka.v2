import 'dart:async';
import 'package:flutter/material.dart';
import 'package:seller_side_uo/homepage.dart';
import 'profilepage.dart'; // Make sure to have a ProfilePage.dart file with a ProfilePage widget





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          //   colors: [Color.fromRGBO(121, 9, 116, 1), Color.fromRGBO(0, 212, 255, 1)], // Use appropriate gradient colors
          // ),
          color: Color.fromRGBO(25, 118, 210, 1),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo_splash.png',height: 200,width: 200,), // Add your logo asset reference
              SizedBox(height: 20),
              Text(
                'One flight saves life.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 100),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}