import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/categorie/visiteMediche.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class visiteMedicheCard extends StatelessWidget {
  final VisiteMediche visiteMediche;
  visiteMedicheCard({this.visiteMediche});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.blue,
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
                  image: AssetImage(visiteMediche.image),
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
                    textTypeVisiteMediche(visiteMediche: visiteMediche),
                    SizedBox(height: 3.0),
                    Text(
                      visiteMediche.description,
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

class textTypeVisiteMediche extends StatelessWidget {
  const textTypeVisiteMediche({
    Key key,
    @required this.visiteMediche,
  }) : super(key: key);

  final VisiteMediche visiteMediche;

  @override
  Widget build(BuildContext context) {
    if (visiteMediche.value == "1") {
      return Text(
        visiteMediche.name,
        style: kTitleStyle.copyWith(
            fontSize: 24,
            decoration: TextDecoration.underline,
            color: bluPrimaryColor),
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        visiteMediche.name,
        style: kTitleStyle,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
