import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

import 'Botm NavBar.dart';
import 'Constant Widgets.dart';
import 'Home Page.dart';
import 'Registration Pages/Email_Page.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Login.png"), fit: BoxFit.cover),
        ),
        // padding:  EdgeInsets.only(top: 62),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:  EdgeInsets.only(left: 22,bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: AppColor.whiteColor),),
                    SizedBox(height: 6)
                  ],
                ),
              ),
            ),
            Expanded(flex: 3,
              child: Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),color: AppColor.BackGroundColor),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("Please login your account", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.text_color)),
                            TextField_Design("Enter your Email Address",'Email Address',310),
                            TextField_Design("Enter password",'Password',310),
                            SizedBox(height: 14),
                            Elevated_Button("Continue", () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Bottm_Nav()));
                            }, 110, 12, AppColor.Elevated_Button_Color, AppColor.Elevated_Button_Color, AppColor.button_outline_col),
                            SizedBox(height: 14),
                            Text("or", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.text_color)),
                            SizedBox(height: 18),
                            Image_Elevated_Button('images/google.png', 'Continue with Google', AppColor.whiteColor, AppColor.button_outline_col, AppColor.Button_Text_Color, () {}),
                            SizedBox(height: 12),
                            Image_Elevated_Button('images/facebook.png', 'Continue with Facebook', AppColor.F_Button_Color, AppColor.F_Button_Color, AppColor.whiteColor, () {}),
                            SizedBox(height: 12),
                            Image_Elevated_Button('images/apple.png', 'Continue with Apple', AppColor.blackColor, AppColor.blackColor, AppColor.whiteColor, () {}),
                            SizedBox(height: 18),
                            GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Email_Page()));
                                },
                                child : Text("Don’t have an account? Sign up", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.primaryColor))),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
