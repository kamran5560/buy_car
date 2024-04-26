import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import 'Constant Widgets.dart';

class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.BackGroundColor,
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(color: AppColor.blackColor),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Hola, Faiz 👋",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: AppColor.title_color),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Find your favorite car",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: AppColor.text_color),
                    ),
                  ],
                ),
                Image.asset(ImageAssets.notification),
              ],
            ),
            Search_TextField(),
            SizedBox(height: 10),
            Text(
              "Brands/New",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColor.title_color),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(ImageAssets.nissan),
                  SizedBox(width: 10),
                  Image.asset(ImageAssets.bmw),
                  SizedBox(width: 10),
                  Image.asset(ImageAssets.oudi),
                  SizedBox(width: 10),
                  Image.asset(ImageAssets.toyota),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "All Cars /Used car",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColor.title_color),
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Home_Pag_Card('images/car1.png','Audi R8',800000),
                        Home_Pag_Card('images/car2.png','Audi R8',1250000),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Home_Pag_Card('images/car1.png','Audi R8',450000),
                        Home_Pag_Card('images/car2.png','Audi R8',600000),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Home_Pag_Card('images/car1.png','Audi R8',167000),
                        Home_Pag_Card('images/car2.png','Audi R8',326000),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
