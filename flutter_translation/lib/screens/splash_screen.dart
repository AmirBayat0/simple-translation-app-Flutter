import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../controller/splash_controller.dart';
import '../screens/main_screen.dart';
import '../utils/constanst.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>().nextScreen(MainScreen());
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 22, 73, 240),
              Color.fromARGB(255, 241, 64, 108),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FadeInDown(
              child: RichText(
                text: TextSpan(
                  text: "FlexZ",
                  style: GoogleFonts.rajdhani(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: " Translator",
                      style: GoogleFonts.rajdhani(
                        color: Color.fromARGB(255, 243, 131, 123),
                        fontWeight: FontWeight.w400,
                        fontSize: 34,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            SpinKitRing(
              size: 30.0, color: Colors.white,
              lineWidth: 3.0,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
