import 'package:project_profil/Custom_Botton_Nav_Bar.dart';
import 'package:project_profil/enums.dart';
import 'package:project_profil/theme.dart';

import 'body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: PofileScreen(),
    );
  }
}

class PofileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init( BoxConstraints(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Body(),
        bottomNavigationBar:
            CustomBottonNavBar(selectedMenu: MenuState.profile));
  }
}
