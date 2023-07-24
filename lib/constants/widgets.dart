import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_ui_screen/constants/colors.dart';

final myWidget = MyWidget();

class MyWidget {
  Widget greyText({required text}) {
    return Text(
      text,
      style: TextStyle(color: myColors.greyTextColor, fontSize: 18),
    );
  }

  Widget iconAvatar(
      {required Color backGroundColor,
      required IconData icon,
      required Color iconColor}) {
    return CircleAvatar(
      backgroundColor: backGroundColor,
      child: Center(
          child: Icon(
        icon,
        color: iconColor,
      )),
    );
  }

  Widget assetsAvatar({required String asset}) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0x23C8C8C8),
            blurRadius: 0,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x23CCCCCC),
            blurRadius: 3,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x1EB0B0B0),
            blurRadius: 5,
            offset: Offset(1, 5),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 7,
            offset: Offset(3, 11),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x05ADADAD),
            blurRadius: 8,
            offset: Offset(5, 19),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x009E9E9E),
            blurRadius: 9,
            offset: Offset(7, 30),
            spreadRadius: 0,
          )
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        maxRadius: 25,
        child: Center(
          child: SvgPicture.asset(asset, height: 30),
        ),
      ),
    );
  }
}
