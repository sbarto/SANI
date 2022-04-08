import 'package:flutter_app_sani/Screens/login.dart';
import 'package:flutter_app_sani/Screens/signup.dart';
import 'package:flutter_app_sani/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"))),
                  ),
                  Text(
                    'PERSONAL HEALTH PROFILE',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      color: bluPrimaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/splash.png"))),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'La tua personale cartella clinica sempre a portata di mano',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  // the login button
                  btn_signin(context),
                  // creating the signup button
                  SizedBox(height: 2),
                  btn_signup(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton btn_signup(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 40,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupPage()));
      },
      color: bluPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Registrati",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }

  MaterialButton btn_signin(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 40,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      // defining the shape
      shape: RoundedRectangleBorder(
          side: BorderSide(color: grayPrimaryColor),
          borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Accedi",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}
