import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 221, 221, 221),
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
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
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
              )
            ],
          )),
    );
  }
}
