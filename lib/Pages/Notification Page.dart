import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import '../res/colors.dart';
import 'Constant Widgets.dart';

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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // here the desired height
          child:App_Bar(context,'Notifications',AppColor.BackGroundColor,() {
            Navigator.of(context).pop();})),

      body: Container(
        padding: EdgeInsets.all( 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Notification_page_Card('images/Noti_Avatar.png',"Dennisa Nedry ","was view and click your car profile.","Last Wednesday at 9:42 AM"),
              Notification_page_Card('images/Noti_Avatar.png',"Dennisa Nedry ","was view and click your car profile.","Last Wednesday at 9:42 AM"),
              Notification_page_Card('images/Noti_Avatar.png',"Dennisa Nedry ","was view and click your car profile.","Last Wednesday at 9:42 AM"),
              Notification_page_Card('images/Noti_Avatar.png',"Dennisa Nedry ","was view and click your car profile.","Last Wednesday at 9:42 AM"),
              Notification_page_Card('images/Noti_Avatar.png',"Dennisa Nedry ","was view and click your car profile.","Last Wednesday at 9:42 AM"),
              Notification_page_Card('images/Noti_Avatar.png',"Dennisa Nedry ","was view and click your car profile.","Last Wednesday at 9:42 AM"),

            ],
          ),
        ),
      )

        
    );
  }


}
