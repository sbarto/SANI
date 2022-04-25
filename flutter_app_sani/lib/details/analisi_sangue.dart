import 'package:flutter/material.dart';
import 'package:flutter_app_sani/cards/specialistiCard.dart';
import 'package:flutter_app_sani/models/specialisti.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class analisiSangue extends StatelessWidget {
  final Specialisti specialisti;

  const analisiSangue({Key key, this.specialisti}) : super(key: key);
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
                  height: 1100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Specialisti',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 40,
                        color: bluPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: specialistiList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        var category1 = specialistiList[index];
                        return InkWell(
                            child: specialistiCard(specialisti: category1));
                      },
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
