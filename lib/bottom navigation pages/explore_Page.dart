import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    //********************Search field*************************/
                    child: Container(
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
                        )),
                  ),
                  Expanded(
                      child: myWidget.iconAvatar(
                          backGroundColor: myColors.greenColor,
                          icon: Icons.camera_alt_outlined,
                          iconColor: myColors.whiteColor))
                ],
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
                height: 20,
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
                          fontWeight: FontWeight.w500,
                          text: "Best Selling",
                          fontSize: 18)),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      child: myWidget.titleText(
                          fontWeight: FontWeight.w500,
                          text: "See All",
                          fontSize: 15)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 200,
                            child: Image.asset("assets/images/lamp.png")),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 200,
                      child: Image.asset("assets/images/watch.png"))
                ],
              )
            ],
          )),
    );
  }
}
