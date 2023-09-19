import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants/colors.dart';
import 'package:shopping_ui_screen/constants/widgets.dart';

class AllProdudtsPage extends StatefulWidget {
  const AllProdudtsPage({super.key});

  @override
  State<AllProdudtsPage> createState() => _AllProdudtsPageState();
}

class _AllProdudtsPageState extends State<AllProdudtsPage> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:25,vertical: 15),
      child: Column(
        children: [
          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 200,
                                    child: Image.asset("assets/images/lamp.png")),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: " B&o Desk Lamp",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 450",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 200,
                                    child: Image.asset("assets/images/watch.png")),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "Leather Wristwatch",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 254",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height:20,),
                       Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 200,
                              child: Image.asset("assets/images/lamp.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          myWidget.titleText(
                              fontWeight: FontWeight.w500,
                              text: " B&o Desk Lamp",
                              fontSize: 16), //product name
                          const SizedBox(
                            height: 10,
                          ),
                          myWidget.titleText(
                              fontWeight: FontWeight.w600,
                              text: "\$ 450",
                              fontSize: 16,
                              color: myColors.greenColor), //product price
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 200,
                              child: Image.asset("assets/images/watch.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          myWidget.titleText(
                              fontWeight: FontWeight.w500,
                              text: "Leather Wristwatch",
                              fontSize: 16), //product name
                          const SizedBox(
                            height: 10,
                          ),
                          myWidget.titleText(
                              fontWeight: FontWeight.w600,
                              text: "\$ 254",
                              fontSize: 16,
                              color: myColors.greenColor), //product price
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}