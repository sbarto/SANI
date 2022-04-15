import 'package:flutter/material.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodGroup extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              )),
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Gruppo Sanguigno',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      color: bluPrimaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Stack(children: <Widget>[
                      Image(
                        height: 300,
                        image: AssetImage("assets/blood-svgrepo-com.png"),
                      ),
                    ])),
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                      )),
                  child: Center(
                    child: Text(
                      '-AB',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 45,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
