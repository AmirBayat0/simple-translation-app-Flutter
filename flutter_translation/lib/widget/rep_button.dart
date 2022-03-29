import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../utils/constanst.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback nextScreen;
  final IconData icon;
  final Color color;
  //
  BottomButton({
    required this.nextScreen,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: Duration(milliseconds: 800),
      child: GestureDetector(
        onTap: nextScreen,
        child: Container(
          margin: EdgeInsets.only(top: 40),
          width: w / 3,
          height: h / 8,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
