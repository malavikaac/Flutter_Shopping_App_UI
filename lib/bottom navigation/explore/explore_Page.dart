import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/widgets.dart';
import 'main_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 4,
                        //********************Search field*************************/
                        child: myWidget.searchField()),
                    //********************circular icon*************************/
                    Expanded(
                        child: myWidget.iconAvatar(
                            backGroundColor: myColors.greenColor,
                            icon: Icons.camera_alt_outlined,
                            iconColor: myColors.whiteColor))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //******************** Title Text*************************/
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: myWidget.titleText(
                        fontWeight: FontWeight.w500,
                        text: "Categories",
                        fontSize: 25)),
                const SizedBox(
                  height: 10,
                ),
                //********************CircleAvatar icons*************************/
                Row(
                  children: [
                    Expanded(
                        child: myWidget.assetsAvatar(
                            asset: "assets/icons/vector.svg")),
                    Expanded(
                        child: myWidget.assetsAvatar(
                            asset: "assets/icons/heel.svg")),
                    Expanded(
                        child: myWidget.assetsAvatar(
                            asset: "assets/icons/shoe.svg")),
                    Expanded(
                        child: myWidget.assetsAvatar(
                            asset: "assets/icons/bulb.svg")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 15),
                        child: myWidget.titleText(
                          color: myColors.titleTextColor,
                            fontWeight: FontWeight.w500,
                            text: "Best Selling",
                            fontSize: 18)),
                    //********************Text Button*************************/
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8),
                        child: myWidget.linkButton(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: myColors.blueColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProductPage(),
                                  ));
                            },
                            text: "See All",)),
                  ],
                ),
                //*******************Products Images*************************/
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
                                        "assets/images/lamp.png",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w500,
                                    text: "Desk Lamp",
                                    fontSize: 16), //product name
                                const SizedBox(
                                  height: 10,
                                ),
                                myWidget.titleText(
                                    fontWeight: FontWeight.w600,
                                    text: "\$ 92",
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
                                        "assets/images/watch.png",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
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
                                    text: "\$ 84",
                                    fontSize: 16,
                                    color: myColors.greenColor), //product price
                              ],
                            ),
                          ),
                        ],
                      ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: SizedBox(
                            child: Image.asset("assets/images/airpods.png"))),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
