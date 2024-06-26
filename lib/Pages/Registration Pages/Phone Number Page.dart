import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../Constant Widgets.dart';
import 'OTP Page.dart';

class Phone_num_Page extends StatefulWidget {
  const Phone_num_Page({Key? key}) : super(key: key);

  @override
  State<Phone_num_Page> createState() => _Phone_num_PageState();
}

class _Phone_num_PageState extends State<Phone_num_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // here the desired height
          child:App_Bar(context,'',AppColor.BackGroundColor,      () {
            Navigator.of(context).pop();
          },)),
      body: Padding(
        padding:  EdgeInsets.only(bottom: 22,left: 22,right: 22),
        child: (
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter your Phone Number to get OTP.',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
                SizedBox(height: 10),
                Text('Please enter your phone number. We will sent you a 6-digit code to verify your number.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),
                SizedBox(height: 6),
                TextField_Design('+923489465700','Phone Number',400),
                Expanded(child : Container()),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button("Continue", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              OTP_Page()));
                    }, 120, 12, AppColor.Elevated_Button_Color, AppColor.Elevated_Button_Color, AppColor.button_outline_col,32),
                  ],
                )

              ],
            )
        ),
      ),
    );
  }
}
