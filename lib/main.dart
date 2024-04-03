import 'package:flutter/material.dart';
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
