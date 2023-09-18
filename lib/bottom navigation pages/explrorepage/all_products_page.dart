import 'package:flutter/material.dart';
import 'package:shopping_ui_screen/constants/colors.dart';

class AllProdudtsPage extends StatefulWidget {
  const AllProdudtsPage({super.key});

  @override
  State<AllProdudtsPage> createState() => _AllProdudtsPageState();
}

class _AllProdudtsPageState extends State<AllProdudtsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: myColors.iconBottomGreyColor,
    );
  }
}