import 'package:flutter/material.dart';

import '../res/colors.dart';
import 'Naw Drawer.dart';

class Contact_Page extends StatefulWidget {
  const Contact_Page({Key? key}) : super(key: key);

  @override
  State<Contact_Page> createState() => _Contact_PageState();
}

class _Contact_PageState extends State<Contact_Page> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: AppColor.BackGroundColor,
        // appBar: AppBar(
        //   backgroundColor: AppColor.button_outline_col,
        //   title: Text(
        //     "Contact Us",
        //     style: TextStyle(color: AppColor.blackColor),
        //   ),
        //   automaticallyImplyLeading: false,
        //   elevation: 0,
        // ),
      drawer:  Drawer(),
      body: Center(
        child: Text('Kamran Khan'),
      ),
    );
  }
}
