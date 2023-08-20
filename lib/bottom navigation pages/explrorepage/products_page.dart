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
        actions: [
          Row(
            children: [
              // IconButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const HomePage()));
              //     },
              //     icon: const Icon(Icons.arrow_back_ios_new)),

              myWidget.titleText(
                text: "B&o",
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ), //titleText
              myWidget.iconAvatar(
                  backGroundColor: myColors.greenColor,
                  icon: Icons.search,
                  iconColor: myColors.whiteColor),
            ],
          ),
        ],
        // bottom: TabBar(
        //   tabs: [
        //     Tab(text: 'All'),
        //     Tab(
        //       text: 'HeadSet',
        //     ),
        //     Tab(text: 'Sheos'),
        //     Tab(text: 'Lights'),
        //   ],
        // ),
      ),
    );
  }
}
