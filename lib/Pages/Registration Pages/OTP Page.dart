import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../Botm NavBar.dart';
import '../Constant Widgets.dart';
import '../Home Page.dart';

class OTP_Page extends StatefulWidget {
  const OTP_Page({Key? key}) : super(key: key);

  @override
  State<OTP_Page> createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
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
                  Text('Enter Verification Code .',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
                  SizedBox(height: 10),
                  Text('We are Automatically detecting a SMS sent to your number.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),
                  SizedBox(height: 6),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 8,
                    direction: Axis.horizontal,
                    runSpacing: 10,
                    children: [
                      OtpTextField(context, true),
                      OtpTextField(context, false),
                      OtpTextField(context, false),
                      OtpTextField(context, false),
                      OtpTextField(context, false),
                      OtpTextField(context, false),
                    ],
                  ),
                  Expanded(child : Container()),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Elevated_Button("verify", () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Bottm_Nav()));
                      }, 135, 12, AppColor.Elevated_Button_Color, AppColor.Elevated_Button_Color, AppColor.button_outline_col,32),
                    ],
                  )

                ],
              )
          ),
        ),
      );

    //   Scaffold(
    //   backgroundColor: AppColor.BackGroundColor,
    //   body: Padding(
    //     padding:  EdgeInsets.symmetric(vertical: 16,horizontal: 22),
    //     child: (
    //         Column(crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding:  EdgeInsets.only(top: 18,),
    //               child: IconButton(onPressed: (){},  icon: Icon(Icons.arrow_back_ios),color: AppColor.button_outline_col,),
    //             ),
    //             SizedBox(height: 6),
    //             Text('Enter your Phone Number to get OTP.',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
    //             SizedBox(height: 10),
    //             Text('Please enter your phone number. We will sent you a 6-digit code to verify your number.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),
    //             SizedBox(height: 6),
    //             Wrap(
    //               alignment: WrapAlignment.start,
    //               spacing: 8,
    //               direction: Axis.horizontal,
    //               runSpacing: 10,
    //               children: [
    //                 OtpTextField(context, true),
    //                 OtpTextField(context, false),
    //                 OtpTextField(context, false),
    //                 OtpTextField(context, false),
    //               ],
    //             ),
    //             Expanded(child : Container()),
    //             Row(mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Elevated_Button("Continue", () {
    //                   // Navigator.of(context).push(MaterialPageRoute(
    //                   //     builder: (BuildContext context) =>
    //                   //         Password_Page()));
    //                 }, 120, 12, AppColor.Elevated_Button_Color, AppColor.Elevated_Button_Color, AppColor.button_outline_col),
    //               ],
    //             )
    //
    //           ],
    //         )
    //     ),
    //   ),
    // );
  }
}
