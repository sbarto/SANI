import 'package:flutter/material.dart';
import 'package:flutter_app_sani/details/visitaPodologo.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Podologo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grayPrimaryColor,
        elevation: 0,
      ),
      backgroundColor: grayPrimaryColor,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Podologo',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 30,
                        color: bluPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Center(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VisitaPodologo(),
                            ),
                          );
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: textProfile(context,
                            "Dr.ssa Ceppitelli – 20/05/2017", Colors.grey),
                      ),
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

  Text textProfile(BuildContext context, String testo, Color color) {
    return Text(
      testo,
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.headline4,
        fontSize: 12,
        color: color,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
