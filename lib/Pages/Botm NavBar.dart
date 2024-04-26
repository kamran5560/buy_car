import 'package:flutter/material.dart';

import '../res/assets/image_assets.dart';
import '../res/colors.dart';
import 'Chat Page.dart';
import 'Contect Page.dart';
import 'Home Page.dart';
import 'Like Page.dart';


class Bottm_Nav extends StatefulWidget {
  const Bottm_Nav({Key? key}) : super(key: key);
  @override
  State<Bottm_Nav> createState() => _Bottm_NavState();
}
class _Bottm_NavState extends State<Bottm_Nav> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    Home_Page(),
    Contact_Page(),
    Like_Page(),
    Chat_Page()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _widgetOptions[_selectedIndex],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: AppColor.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: BottomNavigationBar(
              onTap: _onItemTapped,
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Container(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImageAssets.Home_active),
                      ],
                    ),
                  ),
                  icon: Image.asset(ImageAssets.home_icon),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Container(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImageAssets.Prfile_Active),
                      ],
                    ),
                  ),
                  icon: Image.asset(ImageAssets.Profile),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Container(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImageAssets.Like_Active),
                      ],
                    ),
                  ),
                  icon: Image.asset(ImageAssets.like_icon),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Container(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.chat_bubble,color: AppColor.whiteColor,),
                      ],
                    ),
                  ),
                  icon:Icon(Icons.chat,color: AppColor.whiteColor,),
                  label: '',
                ),

              ],
            ),
          ),
          // CustomBannerAd(Adsize: AdSize.fullBanner,)
        ],
      ),
    );
  }
}
