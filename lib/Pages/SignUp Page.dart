import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

import 'Constant Widgets.dart';
import 'Login Page.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({Key? key}) : super(key: key);

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Signup.png"), fit: BoxFit.cover),
        ),
        padding:  EdgeInsets.only(top: 62),

        child: Column(
          children: [
              Expanded(
                flex: 3,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 52),
                      child:
                      Column(
                        children: [
                          Text("Sign up or log in",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: AppColor.whiteColor),),
                         SizedBox(height: 6),
                          Text("sign up get your discount",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xff242731)),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            Expanded(
              flex: 5,
              child : Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),color: AppColor.BackGroundColor),

                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 32),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 22),
                          Image_Elevated_Button('images/google.png','Continue with Google',AppColor.whiteColor,AppColor.whiteColor,AppColor.Button_Text_Color,(){}),
                          Image_Elevated_Button('images/facebook.png','Continue with Facebook',AppColor.F_Button_Color,AppColor.F_Button_Color,AppColor.whiteColor,(){}),
                          Image_Elevated_Button('images/apple.png','Continue with Apple',AppColor.blackColor,AppColor.blackColor,AppColor.whiteColor,(){}),
                          Text("or", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.text_color),),
                          Elevated_Button("Continue with email",(){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Login_Page()));
                          },72,12,AppColor.BackGroundColor,AppColor.button_outline_col,AppColor.button_outline_col),
                          Text("Already have an account? Login", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.primaryColor),),
                          Text("By continuing, you automatically accept our Terms & \nConditions, Privacy Policy and Cookies policy.",  textAlign: TextAlign.center,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.text_color),),

                        ],
                      ),
                    )
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
