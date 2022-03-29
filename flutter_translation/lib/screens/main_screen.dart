import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

import '../controller/translate_controller.dart';
import '../utils/constanst.dart';
import '../screens/translation_screen.dart';
import '../widget/rep_button.dart';

class MainScreen extends StatelessWidget {


  
/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
        body: Container(
          margin: EdgeInsets.all(10),
          width: w,
          height: h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MiddleLangs(),
              BottomText(),
              BottomButton(
                nextScreen: () {
                  Get.to(
                    () => TranslationScreen(),
                    transition: Transition.cupertino,
                  );
                },
                icon: Icons.arrow_forward_ios_outlined,
                color: Color(0xffFF865E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Middle Laguages Components
class MiddleLangs extends StatelessWidget {
  MiddleLangs({
    Key? key,
  }) : super(key: key);
  var _controller = Get.find<TranslateController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h / 2.18,
      child: Column(
        children: [
          FadeInDown(
            delay: Duration(milliseconds: 300),
            child: Container(
              margin: EdgeInsets.all(10),
              width: w / 1.1,
              height: h / 5,
              decoration: BoxDecoration(
                color: Color(0xff9785FF),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  "English",
                  style: GoogleFonts.cairo(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          ),
          FadeInDown(
            delay: Duration(milliseconds: 400),
            child: GetBuilder<TranslateController>(builder: (context) {
              return Container(
                margin: EdgeInsets.all(10),
                width: w / 1.1,
                height: h / 5,
                decoration: BoxDecoration(
                    color: Color(0xffA2D2FF),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _controller.to,
                        style: GoogleFonts.cairo(
                            color: Colors.white, fontSize: 35),
                      ),
                      DropdownButton<String>(
                        items: <String>['fa', 'it', 'pl', 'ru', 'pt', 'es']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          _controller.dropDownFunc(value!);
                        },
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

// Bottom Text Components
class BottomText extends StatelessWidget {
  const BottomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 700),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: w,
        height: h / 8,
        child: Center(
          child: Text("Translation now\n in your hand",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  height: 1,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}

// AppBar Components
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: FadeInDown(
        child: RichText(
          text: TextSpan(
              text: "FlexZ",
              style: GoogleFonts.rajdhani(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: " Translator",
                  style: GoogleFonts.rajdhani(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
