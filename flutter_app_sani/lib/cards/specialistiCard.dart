import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/specialisti.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class specialistiCard extends StatelessWidget {
  final Specialisti specialisti;
  specialistiCard({this.specialisti});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 15.0, top: 40.0, bottom: 15),
        width: double.infinity,
        height: 100.0,
        child: Row(
          children: [
            SizedBox(width: 20.0),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textTypeSpecialisti(specialisti: specialisti),
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

class textTypeSpecialisti extends StatelessWidget {
  const textTypeSpecialisti({
    Key key,
    @required this.specialisti,
  }) : super(key: key);

  final Specialisti specialisti;

  @override
  Widget build(BuildContext context) {
    if (specialisti.value == "4") {
      return Text(
        specialisti.name,
        style: kTitleStyle.copyWith(
            fontSize: 24,
            decoration: TextDecoration.underline,
            color: bluPrimaryColor),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        specialisti.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
