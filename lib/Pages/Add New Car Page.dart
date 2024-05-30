import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import 'Botm NavBar.dart';
import 'Constant Widgets.dart';

class Add_New_Car extends StatefulWidget {
  const Add_New_Car({Key? key}) : super(key: key);

  @override
  State<Add_New_Car> createState() => _Add_New_CarState();
}

class _Add_New_CarState extends State<Add_New_Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // here the desired height
    child:App_Bar(context,'Add New Car',AppColor.whiteColor,(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) =>
              Bottm_Nav ()));
    },)),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16,bottom: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                height: MediaQuery.of(context).size.shortestSide *0.4,
                width: MediaQuery.of(context).size.shortestSide *4,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_a_photo,color: AppColor.text_color,),
                    SizedBox(height: 8),
                    Text('Add Car Pictures',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColor.text_color),)
                  ],
                ),
              ),

              TextField_Design("Enter Car Engine in CC",'Engine',350),
              TextField_Design("Enter Car Model",'Modal',350),
              TextField_Design("Enter Transmission",'Transmission',350),
              TextField_Design("Enter Car Condition",'Condition',350),
              TextField_Design("EnterCar Drive",'Drive',350),
              TextField_Design("Enter Car Registration / Number",'Registration',350),
              TextField_Design("Enter Location",'Location',350),
              TextField_Design("Enter Car Price",'Price',350),

              Padding(
                padding:  EdgeInsets.symmetric(vertical: 12),
                child: Elevated_Button("Done",(){},62,14,AppColor.F_Button_Color,AppColor.F_Button_Color,AppColor.whiteColor,32),
              )

            ],
          ),
        ),
      ),
    );
  }
}
