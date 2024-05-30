import 'package:flutter/material.dart';
import 'Pages/About Screen.dart';
import 'Pages/Add New Car Page.dart';
import 'Pages/Botm NavBar.dart';
import 'Pages/Car Info.dart';
import 'Pages/Edit Profile.dart';
import 'Pages/Home Page.dart';
import 'Pages/Login Page.dart';
import 'Pages/Profile Page.dart';
import 'Pages/Registration Pages/Email_Page.dart';
import 'Pages/Splash Page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Dialogue_Page',
      routes: {
        '/Dialogue_Page': (context) =>  Splash_Page(),
      },
    );
  }
}
