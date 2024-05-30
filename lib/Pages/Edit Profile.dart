import 'package:flutter/material.dart';

import '../res/colors.dart';
import 'Botm NavBar.dart';
import 'Constant Widgets.dart';
import 'Profile Page.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child:App_Bar(context,'Edit Profile',AppColor.whiteColor,() {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) =>
                    Profile_Page()));
          })),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CircleAvatar(radius: (50),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(50),
                    child:  Image.asset(
                      'images/My-pic.png',
                      width: 120,
                      height: 120,
                    ),
                  )
              ),
              Padding(
                padding:  EdgeInsets.only(top: 16,bottom: 22),
                child: Text("Change Picture",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: AppColor.title_color),),
              ),
              TextField_Design("Kamran Khan",'Name',350),
              TextField_Design("Khan@gmail.com",'Email',350),
              TextField_Design("+923489465700",'Contact',350),
              TextField_Design("Mingora Swat",'Address',350),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22,),
                child: Elevated_Button("Done",() {},
                    62, 14, AppColor.F_Button_Color, AppColor.F_Button_Color, AppColor.whiteColor, 8),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
