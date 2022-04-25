import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/categorie/prescrizioni.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class prescrizioniCard extends StatelessWidget {
  final Prescrizioni prescrizioni;
  prescrizioniCard({this.prescrizioni});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 15.0, top: 25.0, bottom: 25),
        width: double.infinity,
        height: 100.0,
        child: Row(
          children: [
            Container(
              width: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: kBlue2Color,
                image: DecorationImage(
                  image: AssetImage(prescrizioni.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 30.0),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 70.0),
                    textTypePrescrizioni(prescrizioni: prescrizioni),
                    SizedBox(height: 3.0),
                    Text(
                      prescrizioni.description,
                      overflow: TextOverflow.ellipsis,
                      style: kCategoryStyle.copyWith(
                          color: Color.fromARGB(255, 65, 65, 65)),
                    ),
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

class textTypePrescrizioni extends StatelessWidget {
  const textTypePrescrizioni({
    Key key,
    @required this.prescrizioni,
  }) : super(key: key);

  final Prescrizioni prescrizioni;

  @override
  Widget build(BuildContext context) {
    if (prescrizioni.value == "1") {
      return Text(
        prescrizioni.name,
        style: kTitleStyle.copyWith(
            fontSize: 24,
            decoration: TextDecoration.underline,
            color: bluPrimaryColor),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        prescrizioni.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
