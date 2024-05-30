import 'dart:async';
import 'package:flutter/material.dart';
import '../res/colors.dart';
import '../res/assets/image_assets.dart';
import 'OnBording Screen/OnBording Page.dart';
import 'SignUp Page.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({Key? key}) : super(key: key);

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Onbording_Page())));
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Splash.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.only(bottom: 32),
          child: Column(
            children: [
              Expanded(child : Container()),
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("BY USED AND \n CHEAP CARS",style: TextStyle(fontSize:40,fontWeight: FontWeight.w700,color: AppColor.whiteColor),),
               ],
             ),
              SizedBox(height: 32),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(ImageAssets.Vector2),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}

