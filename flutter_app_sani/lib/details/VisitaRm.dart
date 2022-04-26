import 'package:flutter/material.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitaRm extends StatelessWidget {
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
                    Row(
                      children: <Widget>[
                        Expanded(child: Image.asset("assets/rm1.png")),
                        Expanded(child: Image.asset("assets/rm2.png")),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Flexible(
                            child: Text(
                              'Esame eseguito mediante sequenze TSE \n e FFe T1 e T2 pesante ed a soppresione \n selettiva del segnale adiposo. \n -Normoconformati il legamento peroneo-astragalico anteriore, \n posteriore,il peroneo-calcaneare ed il complesso legamentoso mediale.\n Nei limiti i legamenti interossei. \n -Non evidenti alterazioni morfostrutturali e di segnale \n a carico del tendine d\'Achille e del triangolo adiposo di Kager. \n -Modesta falda fluida peritendinea a carico del peroniero lungo;\n nei limiti della norma \n le rimamenti strutture tendinee anteriori e posteriori , esenti da significative\n falde flide tenosinovitiche.\n -Rimaneggiamento astragalo-navicolare modesta distensione capsulare; \n piccola area di alterato segnale in corrispondenza della base del naso\n dell\'astragalo,\n iperitensa in STIR come per fenomeni algodistrofici.\n-Non evidenti ulteriori lesioni focali ossee, rimamenti rapporti articolare conservati. \n-Minima quota fluida nel recesso tibiale anteriore',
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 9,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
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
