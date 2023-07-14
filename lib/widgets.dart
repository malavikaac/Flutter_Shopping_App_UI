import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants.dart';

final myWidget = MyWidget();

class MyWidget {
  Widget greyText({required text}) {
    return Text(
      text,
      style: TextStyle(color: myColors.greyTextColor, fontSize: 18),
    );
  }

  Widget avatar(
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
}
