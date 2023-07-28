import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'bottom navigation pages/explrorepage/explore_Page.dart';
import 'bottom navigation pages/profile_page.dart';
import 'bottom navigation pages/shopping_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const ExplorePage(),
    const Page2(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Icon(
                    Icons.explore_outlined,
                    color: myColors.greenColor,
                    size: 35,
                  )
                : Icon(
                    Icons.explore_outlined,
                    color: myColors.iconBottomGreyColor,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Icon(
                    Icons.shopping_cart_outlined,
                    color: myColors.greenColor,
                    size: 35,
                  )
                : Icon(
                    Icons.shopping_cart_outlined,
                    color: myColors.iconBottomGreyColor,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? Icon(
                    Icons.person_outline,
                    color: myColors.greenColor,
                    size: 35,
                  )
                : Icon(
                    Icons.person_outline,
                    color: myColors.iconBottomGreyColor,
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}
