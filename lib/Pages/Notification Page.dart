import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import '../res/colors.dart';

class Notification_Page extends StatefulWidget {
  const Notification_Page({Key? key}) : super(key: key);

  @override
  State<Notification_Page> createState() => _Notification_PageState();
}

class _Notification_PageState extends State<Notification_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.BackGroundColor,
        title: Center(
          child: Text(
            "Notifications",
            style: TextStyle(color: AppColor.title_color),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
          onPressed: () {
          },
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),

      body: Column(
        children: [

        ],
      )

        
    );
  }
}
