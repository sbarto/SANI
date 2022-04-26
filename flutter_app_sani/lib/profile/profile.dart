import 'package:flutter/material.dart';
import 'package:flutter_app_sani/profile/assicurazione.dart';
import 'package:flutter_app_sani/profile/datiFisici.dart';
import 'package:flutter_app_sani/profile/gruppoSanguigno.dart';
import 'package:flutter_app_sani/profile/malattieCroniche.dart';
import 'package:flutter_app_sani/profile/medicoBase.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:flutter_app_sani/utils/goToHome.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kGreyColorVisite,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 1.42,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: kGreyColorVisite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: size.height * 0.07),
                    Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: goToHome(context, kGreyColorVisite)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, bottom: 8.0, right: 8.0),
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage("assets/user.png"),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 110),
                            testoTitolo(context, "Mario Rossi", Colors.black),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    separatoreBlu(),
                    SizedBox(height: 30.0),
                    testoTitolo(context, "Dati Anagrafici", bluPrimaryColor),
                    SizedBox(height: 10.0),
                    infoProfile(context),
                    SizedBox(height: 20.0),
                    testoTitolo(context, "Dati Sanitari", bluPrimaryColor),
                    SizedBox(height: 10.0),
                    buttonsProfile(context),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  RaisedButton buttonSanitario(BuildContext context, String testo, int id) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 120),
      onPressed: () {
        if (id == 1) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DatiFisici()));
        } else if (id == 2) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MedicoBase()));
        } else if (id == 3) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BloodGroup()));
        } else if (id == 4) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MalattieCroniche()));
        } else if (id == 5) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Assicurazione()));
        }
      },
      color: bluPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: textProfile(context, testo, Colors.white),
    );
  }

  Padding separatoreBlu() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(90.0),
            topRight: Radius.circular(90.0),
            bottomLeft: Radius.circular(90.0),
            bottomRight: Radius.circular(90.0),
          ),
          color: bluPrimaryColor,
        ),
      ),
    );
  }

  Text testoTitolo(BuildContext context, String testo, Color color) {
    return Text(
      testo,
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.headline4,
        fontSize: 25,
        color: color,
        fontWeight: FontWeight.w700,
      ),
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
            rowProfile(context, "     Mario Rossi"),
            SizedBox(height: 16.0),
            rowProfile(context, "     Perugia"),
            SizedBox(height: 16.0),
            rowProfile(context, "     14/10/1989"),
            SizedBox(height: 16.0),
            rowProfile(context, "     MRORSS89T14F478G"),
            SizedBox(height: 16.0),
            rowProfile(context, "     Via Settevalli n. 967"),
            SizedBox(height: 16.0),
            rowProfile(context, "     06132 – Pila – PG"),
            SizedBox(height: 16.0),
          ],
        ));
  }

  Container buttonsProfile(BuildContext context) {
    return Container(
        child: Column(
      children: [
        buttonSanitario(context, "Dati Fisici", 1),
        SizedBox(height: 5.0),
        buttonSanitario(context, "Medico di Base", 2),
        SizedBox(height: 5.0),
        buttonSanitario(context, "Gruppo Sanguigno", 3),
        SizedBox(height: 5.0),
        buttonSanitario(context, "Malattie Croniche", 4),
        SizedBox(height: 5.0),
        buttonSanitario(context, "Assicurazione", 5),
        SizedBox(height: 5.0),
      ],
    ));
  }

  Row rowButton(BuildContext, String testo) {
    return Row(
      children: [
        Container(child: textProfile(BuildContext, testo, Colors.white)),
      ],
    );
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
