import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'explore/explore_Page.dart';
import 'profile/profile_page.dart';
import 'cart/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
    return SafeArea(
      child: Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
    );
  }
//********************Bottom navigation****************** */
  Container buildMyNavBar(BuildContext context) {
    return Container(
       height: 45,
      child: Row(
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
                    size: 28,
                  )
                : Icon(
                    Icons.explore_outlined,
                    color: myColors.iconBottomGreyColor,
                    size: 24,
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
                    size: 28,
                  )
                : Icon(
                    Icons.shopping_cart_outlined,
                    color: myColors.iconBottomGreyColor,
                    size: 24,
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
                    size: 28,
                  )
                : Icon(
                    Icons.person_outline,
                    color: myColors.iconBottomGreyColor,
                    size: 24,
                  ),
          ),
        ],
      ),
    );
  }
}
