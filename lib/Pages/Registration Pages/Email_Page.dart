import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../Constant Widgets.dart';
import 'Password Page.dart';

class Email_Page extends StatefulWidget {
  const Email_Page({Key? key}) : super(key: key);

  @override
  State<Email_Page> createState() => _Email_PageState();
}

class _Email_PageState extends State<Email_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 16,horizontal: 22),
        child: (
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 18,),
              child: IconButton(onPressed: (){},  icon: Icon(Icons.arrow_back_ios),color: AppColor.button_outline_col,),
            ),
            SizedBox(height: 6),
            Text('What’s your email?',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
            SizedBox(height: 10),
            Text('We’ll check if you have an account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),
            SizedBox(height: 6),
            TextField_Design("Enter your Email Address",'Email Address',400),
            Expanded(child : Container()),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Elevated_Button("Continue", () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Password_Page()));
                }, 120, 12, AppColor.Elevated_Button_Color, AppColor.Elevated_Button_Color, AppColor.button_outline_col),
              ],
            )

          ],
        )
        ),
      ),
    );
  }
}
