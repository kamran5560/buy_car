import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../Constant Widgets.dart';
import 'Phone Number Page.dart';

class Name_Page extends StatefulWidget {
  const Name_Page({Key? key}) : super(key: key);

  @override
  State<Name_Page> createState() => _Name_PageState();
}

class _Name_PageState extends State<Name_Page> {
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
                Text('What’s your Name?',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
                SizedBox(height: 10),
                Text('Let us know how to properly address you',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),
                SizedBox(height: 6),
                TextField_Design('Enter your Name','Name',400),
                Expanded(child : Container()),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button("Continue", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Phone_num_Page()));
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
