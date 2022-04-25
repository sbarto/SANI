import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/sottocategorie/farmaci.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class FarmaciCard extends StatelessWidget {
  final Farmaci farmaci;
  FarmaciCard({this.farmaci});

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
                    textTypeFarmaci(farmaci: farmaci),
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

class textTypeFarmaci extends StatelessWidget {
  const textTypeFarmaci({
    Key key,
    @required this.farmaci,
  }) : super(key: key);

  final Farmaci farmaci;

  @override
  Widget build(BuildContext context) {
    if (farmaci.value == "1") {
      return Text(
        farmaci.name,
        style: kTitleStyle.copyWith(
            fontSize: 14,
            decoration: TextDecoration.underline,
            color: bluPrimaryColor),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        farmaci.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
