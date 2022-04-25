import 'package:flutter/material.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grayPrimaryColor,
        elevation: 0,
      ),
      backgroundColor: grayPrimaryColor,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Gruppo Sanguigno',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 45,
                        color: bluPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Image.asset("assets/blood-svgrepo-com2.png"))
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 150.0),
                        Text(
                          'AB-',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 60,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
