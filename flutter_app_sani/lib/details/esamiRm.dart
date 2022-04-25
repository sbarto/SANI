import 'package:flutter/material.dart';
import 'package:flutter_app_sani/cards/sottocategorie/rmCard.dart';
import 'package:flutter_app_sani/models/sottocategorie/risonanze.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class esamiRM extends StatelessWidget {
  final Risonanza risonanza;

  const esamiRM({Key key, this.risonanza}) : super(key: key);
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
                  margin: EdgeInsets.only(top: size.height * 0.1),
                  decoration: BoxDecoration(
                      color: kGreyColorVisite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'RM',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 40,
                        color: bluPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(90.0),
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(90.0),
                        ),
                        color: kGreyColorVisite,
                      ),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 15,
                          );
                        },
                        itemCount: risonanzaList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) {
                          var category1 = risonanzaList[index];
                          return InkWell(child: rmCard(risonanza: category1));
                        },
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
}
