import 'package:flutter/material.dart';

final myWidget = MyWidget();

class MyWidget {
  Widget greyText({required text}) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}
