import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../Constant Widgets.dart';
import 'Name Page.dart';

class Password_Page extends StatefulWidget {
  const Password_Page({Key? key}) : super(key: key);

  @override
  State<Password_Page> createState() => _Password_PageState();
}

class _Password_PageState extends State<Password_Page> {
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
                Text('Create your account password ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
                SizedBox(height: 10),
                Text('Your passwords must be at least  8 characters long, and contain at least one letter and one digit.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),
                SizedBox(height: 6),
                TextField_Design('Enter your Password','Password',400),
                Expanded(child : Container()),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button("Continue", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Name_Page()));
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
