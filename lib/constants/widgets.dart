import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_ui_screen/constants/colors.dart';

final myWidget = MyWidget();

class MyWidget {
  Widget searchField() {
    return Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: myColors.searchFieldColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              disabledBorder: InputBorder.none,
              border: InputBorder.none),
        ));
  }

  Widget titleText(
      {required String text,
      required double fontSize,
      required FontWeight fontWeight,
      Color? color}) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }

  Widget button(
      {required String text,
      required double fontSize,
      required FontWeight fontWeight,
      Color? color,
      required Function onPressed}) {
    return TextButton(
        onPressed: onPressed as void Function(),
        child: Text(text,
            style: TextStyle(
                fontSize: fontSize, fontWeight: fontWeight, color: color)));
  }

  Widget normalText(
      {required String text,
      required double fontSize,
      required FontWeight fontWeight}) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: myColors.titleTextColor));
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
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: myColors.shadowColor1,
            blurRadius: 0,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: myColors.shadowColor2,
            blurRadius: 3,
            offset: const Offset(0, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: myColors.shadowColor3,
            blurRadius: 5,
            offset: const Offset(1, 5),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: myColors.shadowColor4,
            blurRadius: 7,
            offset: const Offset(3, 11),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: myColors.shadowColor5,
            blurRadius: 8,
            offset: const Offset(5, 19),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: myColors.shadowColor6,
            blurRadius: 9,
            offset: const Offset(7, 30),
            spreadRadius: 0,
          )
        ],
      ),
      child: CircleAvatar(
        backgroundColor: myColors.whiteColor,
        maxRadius: 25,
        child: Center(
          child: SvgPicture.asset(asset, height: 35),
        ),
      ),
    );
  }
}
