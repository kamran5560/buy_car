import 'package:buy_car/res/colors.dart';
import 'package:flutter/material.dart';
import '../../res/assets/image_assets.dart';
import '../SignUp Page.dart';
import 'Context Model.dart';

class Onbording_Page extends StatefulWidget {
  @override
  _Onbording_PageState createState() => _Onbording_PageState();
}

class _Onbording_PageState extends State<Onbording_Page> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return  SafeArea(
                  child: Column(
                    children: [

                      Padding(
                        padding:  EdgeInsets.only(top: 42),
                        child: Image.asset(contents[i].image,
                            width: 390,
                            fit: BoxFit.cover),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(top: 42,left: 22),
                        child: Row(
                          children: [
                            Text(
                              contents[i].title,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: AppColor.title_color,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding:  EdgeInsets.only(left: 22),
                        child: Row(
                          children: [
                            Text(
                              contents[i].discription,
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: AppColor.text_color,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Row(
                    children: List.generate(
                      contents.length,
                          (index) => buildDot(index, context),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SignUp_Page(),
                        ),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    }
                  },
                  child: Image.asset(
                    ImageAssets.Vector1, // Replace with your image path
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.primaryColor,
      ),
    );
  }
}