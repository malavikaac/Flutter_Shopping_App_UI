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
                              hintText: "Search",
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
                    backgroundColor: Color.fromARGB(255, 219, 203, 203),
                    maxRadius: 25,
                    child: Center(
                      child: SvgPicture.asset("assets/icons/vector.svg",
                          height: 32),
                    ),
                  )),
                  Expanded(
                      child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 218, 164, 164),
                    maxRadius: 25,
                    child: Center(
                      child:
                          SvgPicture.asset("assets/icons/heel.svg", height: 30),
                    ),
                  )),
                  Expanded(
                      child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 218, 164, 164),
                    maxRadius: 25,
                    child: Center(
                      child: SvgPicture.asset("assets/icons/shoe.svg"),
                    ),
                  )),
                  Expanded(
                      child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 218, 164, 164),
                    maxRadius: 25,
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
