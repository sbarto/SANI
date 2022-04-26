import 'package:flutter/material.dart';
import 'package:flutter_app_sani/profile/profile.dart';

InkWell goToProfile(BuildContext context) {
  return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Profile())),
      child: CircleAvatar(
        radius: 20.0,
        backgroundImage: AssetImage("assets/user.png"),
      ));
}
