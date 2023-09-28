import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 230, 248, 238),
      child: const Center(
        child: Text(
          "Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 170, 170, 188),
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
