import 'package:flutter/material.dart';
import '../res/colors.dart';


Widget App_Bar(BuildContext context,String title, Color b_Color ,Function() onpress){
  return AppBar(
    backgroundColor: b_Color,
    title: Center(
      child: Text(
        "${title}",
        style: TextStyle(color: AppColor.title_color),
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
      onPressed: onpress
      //     () {
      //   Navigator.of(context).pop();
      // },
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
  );
}

Widget TextField_Design(
     String hint,String lable ,double width) {
  return Container(
    padding: EdgeInsets.only(top: 14),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${lable }',textAlign: TextAlign.start,style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.Button_Text_Color)),
SizedBox(height: 14),
        Container(
          height: 50,
          width: width,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: '${hint}',
            ),
          ),
        ),
      ],
    ),
  );

}

Widget Image_Elevated_Button(String image,String B_Text,Color B_Color,Color Out_Line_Color,Color T_Color,Function() onpress,){
  return   Container(
    width: 320,
    child: ElevatedButton.icon(
      onPressed: onpress,
      icon: Image.asset(
        '$image',
        width: 62,
        height: 42,
      ),
      label: Text(
        '$B_Text',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: T_Color
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(B_Color),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Out_Line_Color, width: 2),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    ),
  );
}

Widget Elevated_Button(
    String B_text,
    Function() onpress,
    double padding_hor,
    double padding_ver,
    Color buttonColor,
    Color OutLineColor,
    Color TextColor,
    double border_radius,

    ) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
          ),
          margin: EdgeInsets.symmetric( vertical: 10),
          child: ElevatedButton(
            onPressed: onpress,
            style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: OutLineColor, width: 2),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(border_radius),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(buttonColor)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: padding_hor, vertical: padding_ver),
              child: Text(
                '$B_text',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: TextColor),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget OtpTextField(BuildContext context, bool autoFocus) {
  return Container(
    height: MediaQuery.of(context).size.shortestSide * 0.13,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
      shape: BoxShape.rectangle,
    ),
    child: AspectRatio(
      aspectRatio: 1,
      child: TextField(
        autofocus: autoFocus,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(),
        maxLines: 1,
        onChanged: (value) {
          if (value.isNotEmpty) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    ),
  );
}

Widget Search_TextField (){
  return  Padding(
    padding:  EdgeInsets.only(top: 16),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
        border: InputBorder.none, // Set border to none
        filled: true, // Set to true to fill the background
        fillColor: AppColor.whiteColor, // Set the background color
      ),
    ),
  );
}

Widget Home_Pag_Card(String image,String Car_Name,double value){
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.whiteColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    width: 170,
    padding: EdgeInsets.only(top: 6,bottom: 12,left: 8,right: 8),
    margin: EdgeInsets.only( left: 8),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          '${image}',
          scale: 0.5,
        ),
        SizedBox(height: 4),
        Text(
          "${Car_Name}",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: AppColor.blackColor),
        ),
        SizedBox(height: 6),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${value}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColor.text_color),
            ),
            Text(
              "New",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColor.text_color),
            ),
          ],
        )
      ],
    ),
  );
}

Widget Notification_page_Card(String image, String name,String notification,String LastSeen){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),color:  AppColor.whiteColor,
    ),
    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
    margin: EdgeInsets.symmetric(vertical: 8),
    child:   Row(crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Image.asset(
          '${image}',
          scale: .5,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.Dark_Gray),),
              SizedBox(height: 4),
              Text("${notification}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.blackColor),),
              SizedBox(height: 4),
              Text("${LastSeen}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.text_color),),

            ],
          ),
        ),
      ],
    ),
  );
}

Widget Hori_Line_Code(Color LineColor,){
  return  Padding(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Container(
      height: 1,
      color: LineColor,
    ),
  );
}


// Widget NavDrawer(BuildContext context){
//   int _status = 0;
//   return Drawer(
//     child: Padding(
//       padding:  EdgeInsets.only(top:36,left: 18,right: 18),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           IconButton(
//             icon: Icon(Icons.arrow_back_ios, color: AppColor.title_color),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           SizedBox(height: 12),
//           CircleAvatar(
//             radius: 50,
//             backgroundColor: Colors.white,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//               child: Image.asset(
//                 'images/My-pic.png',
//                 width: 80,
//                 height: 80,
//               ),
//             ),
//           ),
//
//           Text(
//             'Kamran Khan',
//             style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: AppColor.blackColor),
//           ),
//
//           Text(
//             'miakamrankhan700@gmail.com',
//             style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColor.text_color),
//           ),
//           SizedBox(height: 22),
//           Row(
//             children: [
//               Icon(Icons.error_outline_outlined,color: AppColor.text_color),
//               SizedBox(width: 8),
//               Text(
//                 'About Us',
//                 style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
//               ),
//             ],
//           ),
//           Hori_Line_Code(AppColor.text_color),
//           SizedBox(height: 18),
//           Row(
//             children: [
//               Icon(Icons.settings_outlined,color: AppColor.text_color) ,
//               SizedBox(width: 8),
//               Text(
//                 'Settings',
//                 style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
//               ),
//             ],
//           ),
//           Hori_Line_Code(AppColor.text_color),
//           SizedBox(height: 18),
//           Row(
//             children: [
//               Icon(Icons.help_outline_outlined,color: AppColor.text_color) ,
//               SizedBox(width: 8),
//               Text(
//                 'Help and Supports',
//                 style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
//               ),
//             ],
//           ),
//           Hori_Line_Code(AppColor.text_color),
//           SizedBox(height: 18),
//           Row(
//             children: [
//               Icon(Icons.logout,color: AppColor.text_color) ,
//               SizedBox(width: 8),
//               Text(
//                 'LogOut',
//                 style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColor.blackColor),
//               ),
//             ],
//           ),
//
//         ],
//       ),
//     ),
//   );
// }