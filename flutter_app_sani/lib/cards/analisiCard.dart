import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/analisi.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class analisiCard extends StatelessWidget {
  final Analisi analisi;
  analisiCard({this.analisi});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 5.0, top: 25.0, bottom: 25),
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
                  image: AssetImage(analisi.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 70.0),
                    textTypeAnalisi(analisi: analisi),
                    SizedBox(height: 3.0),
                    Text(
                      analisi.description,
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

class textTypeAnalisi extends StatelessWidget {
  const textTypeAnalisi({
    Key key,
    @required this.analisi,
  }) : super(key: key);

  final Analisi analisi;

  @override
  Widget build(BuildContext context) {
    if (analisi.value == "1") {
      return Text(
        analisi.name,
        style: kTitleStyle.copyWith(
            fontSize: 24,
            decoration: TextDecoration.underline,
            color: Color.fromARGB(255, 255, 0, 0)),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        analisi.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
