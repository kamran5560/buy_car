import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

import 'About Screen.dart';
import 'Constant Widgets.dart';

class Nav_Draw extends StatefulWidget {
  const Nav_Draw({Key? key}) : super(key: key);

  @override
  State<Nav_Draw> createState() => _Nav_DrawState();
}

class _Nav_DrawState extends State<Nav_Draw> {

  int _status = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      body: Drawer(
        child: Padding(
          padding:  EdgeInsets.only(top:36,left: 18,right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 12),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/My-pic.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),

              Text(
                'Kamran Khan',
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: AppColor.blackColor),
              ),

              Text(
                'miakamrankhan700@gmail.com',
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColor.text_color),
              ),
              SizedBox(height: 22),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _status =0;
                  });
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          About_Screen()));
                },
                child : Row(
                  children: [
                    Icon(Icons.error_outline_outlined,color: AppColor.text_color),
                    SizedBox(width: 8),
                    Text(
                      'About Us',
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
                    ),
                  ],
                ),
              ),
              Hori_Line_Code(AppColor.text_color),
              SizedBox(height: 18),
              Row(
                children: [
                  Icon(Icons.settings_outlined,color: AppColor.text_color) ,
                  SizedBox(width: 8),
                  Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
                  ),
                ],
              ),
              Hori_Line_Code(AppColor.text_color),
              SizedBox(height: 18),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _status =1;
                  });
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          About_Screen()));
                },
                child : Row(
                  children: [
                    Icon(Icons.help_outline_outlined,color: AppColor.text_color) ,
                    SizedBox(width: 8),
                    Text(
                      'Help and Supports',
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
                    ),
                  ],
                ),
              ),
              Hori_Line_Code(AppColor.text_color),
              SizedBox(height: 18),
              Row(
                children: [
                  Icon(Icons.logout,color: AppColor.text_color) ,
                  SizedBox(width: 8),
                  Text(
                    'LogOut',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
