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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              myWidget.titleText(
                text: "Products",
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color:Colors.black
              ),
            ],
          ), //titleText
          myWidget.iconAvatar(
              backGroundColor: myColors.greenColor,
              icon: Icons.search,
              iconColor: myColors.whiteColor),
        ],
      ),
    );
  }
}
