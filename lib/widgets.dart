import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants.dart';

final myWidget = MyWidget();

class MyWidget {
  Widget greyText({required text}) {
    return Text(
      text,
      style: TextStyle(color: myColors.greyColor, fontSize: 18),
    );
  }

  Widget Icon({required IconData icon}) {
    return Icon(
      icon: icon,
    );
  }
}
