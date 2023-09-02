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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Products",
          style: TextStyle(
            color:myColors.blackColor
          ),
          ) ,                                                           
         iconTheme: IconThemeData(color:myColors.blackColor),
          backgroundColor: myColors.whiteColor,
          actions: [  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: myWidget.iconAvatar(
                  backGroundColor: myColors.greenColor,
                  icon: Icons.search,
                  iconColor: myColors.whiteColor),
            ),
          ],
          bottom:  TabBar(
            unselectedLabelColor: myColors.greyTextColor,
             
            tabs: const [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Headset",
              ),
              Tab(
                text: "Speakers",
              ),
              Tab(
                text: "Mic",
              )
            ],
          ),
        
        ),
      ),
    );
  }
}
