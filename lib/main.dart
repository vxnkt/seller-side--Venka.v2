

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_side_uo/splashscreen.dart';
import 'profilepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor:Colors.white,textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme,),splashColor: Colors.transparent, highlightColor: Colors.transparent, hoverColor: Colors.transparent),
      home: SplashScreen(),
      );
  }
}
