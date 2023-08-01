import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants/colors.dart';
import 'package:shopping_ui_screen/constants/widgets.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new),
                  const SizedBox(
                    width: 20,
                  ),
                  myWidget.titleText(
                    text: "B&o",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ), //titleText
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: myWidget.iconAvatar(
                          backGroundColor: myColors.greenColor,
                          icon: Icons.search,
                          iconColor: myColors.whiteColor))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
