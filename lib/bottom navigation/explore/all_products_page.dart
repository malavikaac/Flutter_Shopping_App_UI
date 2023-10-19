import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants/colors.dart';
import 'package:shopping_ui_screen/constants/widgets.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({super.key});

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 210,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/headphones.png",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "Headphones",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 192",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 210,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/speaker.png",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "Speaker",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 84",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 210,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/heels.png",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "Headphones",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 192",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 210,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/phone.png",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "Speaker",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 84",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 210,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/shoe.png",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "shoe",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 192",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 210,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/mic.png",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "mic",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 84",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          color:myColors.whiteColor,
          child:Row(
          children:[
            //  myWidget.normalText(fontSize:20 ,),
          myWidget.button(
            color:myColors.greenColor,
            text: 'Filter', 
            fontSize: 16,
             fontWeight: FontWeight.normal, 
             onPressed: (){})
          ]
          )
        )
      ],
    );
  }
}