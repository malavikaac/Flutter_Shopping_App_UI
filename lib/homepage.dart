import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants.dart';
import 'package:shopping_ui_screen/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: myColors.greyColor,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 8,
                bottom: 8,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  myWidget.greyText(text: "Search"),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
