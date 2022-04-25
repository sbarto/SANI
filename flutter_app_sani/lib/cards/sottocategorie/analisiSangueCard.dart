import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/sottocategorie/analisiSangue.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class AnalisiSangueCard extends StatelessWidget {
  final AnalisiSangue analisiSangue;
  AnalisiSangueCard({this.analisiSangue});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 15.0, top: 40.0, bottom: 15),
        width: double.infinity,
        height: 90.0,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textTypeAnalisiSangue(analisiSangue: analisiSangue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class textTypeAnalisiSangue extends StatelessWidget {
  const textTypeAnalisiSangue({
    Key key,
    @required this.analisiSangue,
  }) : super(key: key);

  final AnalisiSangue analisiSangue;

  @override
  Widget build(BuildContext context) {
    if (analisiSangue.value == "1") {
      return Text(
        analisiSangue.name,
        style: kTitleStyle.copyWith(
            fontSize: 18,
            decoration: TextDecoration.underline,
            color: bluPrimaryColor),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        analisiSangue.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
