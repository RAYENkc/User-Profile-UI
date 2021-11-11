import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_profil/ProfilPic.dart';
import 'package:project_profil/profile_menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        profile_menu(
          icon: "assets/icons/User Icon.svg",
          text: "MyAccount",
          press: () {},
        ),
        profile_menu(
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
          press: () {},
        ),
        profile_menu(
          icon: "assets/icons/Settings.svg",
          text: "Settings",
          press: () {},
        ),
        profile_menu(
          icon: "assets/icons/Question mark.svg",
          text: "Amie",
          press: () {},
        ),
        profile_menu(
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}
