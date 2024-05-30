import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import 'Botm NavBar.dart';
import 'Constant Widgets.dart';
import 'Home Page.dart';
import 'Registration Pages/Email_Page.dart';

class Car_Info extends StatefulWidget {
  const Car_Info({Key? key}) : super(key: key);

  @override
  State<Car_Info> createState() => _Car_InfoState();
}

class _Car_InfoState extends State<Car_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/car_info.png"), fit: BoxFit.cover),
        ),
        // padding:  EdgeInsets.only(top: 62),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:  EdgeInsets.only(left: 14,right: 14,top: 42),
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Image.asset(ImageAssets.Like_Car,scale: .7,),
                    ],
                  ),
                ),

              ),
            ),
            Expanded(flex: 2,
              child: Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),color: AppColor.BackGroundColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Audi R8", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColor.blackColor)),
                        SizedBox(height: 12),
                        Text("The Audi R8  As the most powerful rear-wheel drive Audi ever, the 2nd generation R8 GT is the grand finale of an icon. In addition"
                            "  to its 602 HP engine, the exterior of the. ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.text_color)),
                        Text("specification", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColor.blackColor)),
                        SizedBox(height: 14),
                        SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Specification_Card("Engine","3400CC"),
                            Specification_Card("Modal","TZ 2016"),
                            Specification_Card("Transmission","Aromatic"),
                            Specification_Card("Condition","10 by 10"),
                            Specification_Card("Color","White"),
                          ],
                        ),
                      ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("80,000.00 pkr", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColor.F_Button_Color)),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 22,),
                              child: Elevated_Button("Buy Now",() {},
                                  42, 12, AppColor.F_Button_Color, AppColor.F_Button_Color, AppColor.whiteColor, 8),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget Specification_Card(String text1,String text2){
    return   Container(
      width: 120,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.whiteColor
      ),
      margin: EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("${text1}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.textfield_outline_col)),
          Text("${text2}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.textfield_outline_col)),

        ],
      ),
    );
}
}

