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
            color: Color.fromARGB(255, 175, 175, 175),
            fontSize: 35,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
