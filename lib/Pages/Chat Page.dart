import 'package:flutter/material.dart';

import '../res/colors.dart';

class Chat_Page extends StatefulWidget {
  const Chat_Page({Key? key}) : super(key: key);

  @override
  State<Chat_Page> createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.BackGroundColor,
        title: Center(
          child: Text(
            "Chat",
            style: TextStyle(color: AppColor.blackColor),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
    );
  }
}
