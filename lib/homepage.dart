import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_ui_screen/constants.dart';
import 'package:shopping_ui_screen/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none),
                        )),
                  ),
                  Expanded(
                      child: myWidget.avatar(
                          backGroundColor: myColors.greenColor,
                          icon: Icons.camera_alt_outlined,
                          iconColor: Colors.white))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CircleAvatar(
                    child: Center(
                      child: SvgPicture.asset("assets/icons/vector.svg"),
                    ),
                  ))
                ],
              )
            ],
          )),
    );
  }
}
