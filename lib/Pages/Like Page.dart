import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import '../res/colors.dart';
import 'Constant Widgets.dart';

class Like_Page extends StatefulWidget {
  const Like_Page({Key? key}) : super(key: key);

  @override
  State<Like_Page> createState() => _Like_PageState();
}

class _Like_PageState extends State<Like_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.BackGroundColor,
        title: Center(
          child: Text(
            "Favorite",
            style: TextStyle(color: AppColor.title_color),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
          onPressed: () {
          },
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
