import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/widgets.dart';
import 'main.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                        child: myWidget.button(
                            fontSize: 14,
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
                              text: "\$ 97",
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
