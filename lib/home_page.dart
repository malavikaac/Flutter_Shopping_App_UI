import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'bottom navigation pages/explore_Page.dart';
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
      height: 60,
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
                ? const Icon(
                    Icons.explore_outlined,
                    color: Color.fromARGB(255, 0, 202, 91),
                    size: 35,
                  )
                : const Icon(
                    Icons.explore_outlined,
                    color: Color.fromARGB(255, 126, 126, 126),
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
                ? const Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(255, 0, 202, 91),
                    size: 35,
                  )
                : const Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(255, 126, 126, 126),
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
                ? const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 202, 91),
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Color.fromARGB(255, 126, 126, 126),
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}
