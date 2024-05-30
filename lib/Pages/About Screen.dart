import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

class About_Screen extends StatefulWidget {
  const About_Screen({Key? key}) : super(key: key);

  @override
  State<About_Screen> createState() => _About_ScreenState();
}

class _About_ScreenState extends State<About_Screen> {
  int _status = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.BackGroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.BackGroundColor,
          title: Center(
            child: Text(
              _status == 0
                  ? 'About Us'
                  : _status == 1
                  ? 'Help and Support'
                  : 'Contact us',
              style: TextStyle(color: AppColor.title_color),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body:

        _status == 0 ?
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff414141))),
              SizedBox(height: 14),
              Text(
                  "Professional Rideshare Platform. Here we will provide you only interesting content, which you will like very much."
                      " We're dedicated to providing you the best of Rideshare, with a focus on dependability"
                      " and Earning. We're working to turn our passion for Rideshare into a booming online website."
                      " We hope you enjoy our Rideshare as much as we enjoy offering them to you. I will keep posting"
                      " more important posts on my Website for all of you. Please give your support and love.Professional Rideshare"
                      " Platform. Here we will provide you only interesting content, which you will like very much. We're dedicated"
                      " to providing you the best of Rideshare, with a focus on dependability and Earning. We're working to turn our"
                      " passion for Rideshare into a booming online website. We hope you enjoy our Rideshare as much as we enjoy offering them to you."
                      " I will keep posting more important posts on my Website for all of you. Please give your support and love.",
                  style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A))),
            ],
          ),
        )
            : _status == 1 ?
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Help and Support", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff414141))),
              SizedBox(height: 14),
              Text(
                  "Lorem ipsum dolor sit amet consectetur. Sit pulvinar mauris mauris eu nibh semper nisl pretium laoreet. Sed non faucibus ac lectus eu arcu. Nulla sit congue facilisis vestibulum"
                      " egestas nisl feugiat pharetra. Odio sit tortor morbi at orci ipsum dapibus interdum. Lorem felis est aliquet arcu nullam pellentesque. Et habitasse ac arcu et nunc euismod "
                      "rhoncus facilisis sollicitudin.", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff5A5A5A))),
            ],
          ),
        )
            :
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Contact us for Ride share", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff414141))),
              SizedBox(height: 26),
              Text(
                "House# 72, Road# 21, Banani, Dhaka-1213 (near Banani Bidyaniketon School & College, beside University of South Asia)",
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5A5A5A)), textAlign: TextAlign.center,),
              SizedBox(height: 12),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Call :", style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A)),),
                  SizedBox(width: 8),
                  Text("+923489465700", style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A))),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Email:", style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A))),
                  SizedBox(width: 8),
                  Text("kamideveloper5560@gmail.com", style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5A5A5A))),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
