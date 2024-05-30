import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../res/assets/image_assets.dart';
import 'Constant Widgets.dart';
import 'Nav_Draw Screen.dart';
import 'Notification Page.dart';

class Home_Page extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _status = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BackGroundColor,
      key: scaffoldKey,
      drawer: Nav_Draw(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.notes_sharp,color: AppColor.blackColor,size: 32,),
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Notification_Page()));
                      },
                      child: Image.asset(ImageAssets.notification)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hello, Kamran 👋",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: AppColor.title_color),
                      ),
                      Text("Find your favorite car",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: AppColor.text_color),)

                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
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
      ),
    );
  }
}
