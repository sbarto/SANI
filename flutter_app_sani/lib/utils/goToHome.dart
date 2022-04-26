import 'package:flutter/material.dart';
import 'package:flutter_app_sani/Screens/my_home_page.dart';

InkWell goToHome(BuildContext context, Color color) {
  return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePage())),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 20.0,
        backgroundImage: AssetImage("assets/home.png"),
      ));
}
