import 'package:flutter/material.dart';
import '../res/colors.dart';
import 'Botm NavBar.dart';
import 'Constant Widgets.dart';
import 'Edit Profile.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(80),
          child:
          AppBar(
            backgroundColor: AppColor.primaryColor,
            title: Center(
              child: Text(
                "Profile",
                style: TextStyle(color: AppColor.whiteColor),
              ),
            ),
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: AppColor.whiteColor),
                onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Bottm_Nav ()));
                }
            ),
            automaticallyImplyLeading: false,
            elevation: 0,
          ),
    ),
      body:
      Stack(
        children: [
          Column(
            children: [
              Container(
                height: 110,
                color: AppColor.primaryColor,
              ),
              Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    "User Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.title_color,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Elevated_Button(
                      "Edit Profile",
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Edit_Profile(),
                              ),
                            );
                          },
                      0,
                      0,
                      AppColor.F_Button_Color,
                      AppColor.F_Button_Color,
                      AppColor.whiteColor,
                      8,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Text(
                          "Added Cars",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColor.title_color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Home_Pag_Card('images/car1.png', 'Audi R8', 800000),
                            Home_Pag_Card('images/car2.png', 'BMW', 1250000),
                            Home_Pag_Card('images/car1.png', 'Nissan', 450000),
                            Home_Pag_Card('images/car2.png', 'Toyota', 600000),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Text(
                          "Details/Setting",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColor.title_color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.text_color),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    margin: EdgeInsets.only(top: 12,left: 14,right: 14),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Contact",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.text_color,
                              ),
                            ),
                            Text(
                              "+923489465700",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.text_color,
                              ),
                            ),
                          ],
                        ),
                        Hori_Line_Code(AppColor.blackColor),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Addresses",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.text_color,
                              ),
                            ),
                            Text(
                              "Islampur Saidu Sharif Swat",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.text_color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'images/My-pic.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
