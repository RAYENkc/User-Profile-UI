import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_profil/enums.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Colors.black;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15)),
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? Color(0xFFFF7643)
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/search-svgrepo-com.svg",
                width: 20,
                color: MenuState.favourite == selectedMenu
                    ? Color(0xFFFF7643)
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/add-svgrepo-com.svg",
                width: 30,
                color: MenuState.search == selectedMenu
                    ? Color(0xFFFF7643)
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectedMenu
                    ? Color(0xFFFF7643)
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? Color(0xFFFF7643)
                    : inActiveIconColor,
              )),
        ],
      )),
    );
  }
}
