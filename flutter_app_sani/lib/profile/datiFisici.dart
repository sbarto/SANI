import 'package:flutter/material.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DatiFisici extends StatelessWidget {
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
            height: size.height * 0.9,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48),
                      )),
                  child: infoProfile(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dati Fisici',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 30,
                        color: bluPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      children: <Widget>[
                        Expanded(child: Image.asset("assets/fitness.png"))
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

  Container infoProfile(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
          color: grayPrimaryColor,
        ),
        child: Column(
          children: [
            rowProfile(context, "     Altezza: 183 cm"),
            SizedBox(height: 16.0),
            rowProfile(context, "     Peso: 85kg"),
            SizedBox(height: 16.0),
            rowProfile(context, "     Massa grassa: 17%"),
            SizedBox(height: 16.0),
            rowProfile(context, "     Infortuni: crociato anteriore dx"),
            SizedBox(height: 16.0),
            rowProfile(context, "    Colesterolo: <3"),
            SizedBox(height: 16.0),
          ],
        ));
  }

  Row rowProfile(BuildContext, String testo) {
    return Row(
      children: [
        Image.asset("assets/circle.png"),
        Container(
            child: textProfile(
                BuildContext, testo, Color.fromARGB(255, 117, 117, 117))),
      ],
    );
  }

  Text textProfile(BuildContext context, String testo, Color color) {
    return Text(
      testo,
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.headline4,
        fontSize: 16,
        color: color,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
