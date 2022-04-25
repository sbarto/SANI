import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/sottocategorie/risonanze.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class rmCard extends StatelessWidget {
  final Risonanza risonanza;
  rmCard({this.risonanza});

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
                    textTypeRisonanza(risonanza: risonanza),
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

class textTypeRisonanza extends StatelessWidget {
  const textTypeRisonanza({
    Key key,
    @required this.risonanza,
  }) : super(key: key);

  final Risonanza risonanza;

  @override
  Widget build(BuildContext context) {
    if (risonanza.value == "1") {
      return Text(
        risonanza.name,
        style: kTitleStyle.copyWith(
            fontSize: 24,
            decoration: TextDecoration.underline,
            color: bluPrimaryColor),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        risonanza.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
