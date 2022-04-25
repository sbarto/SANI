import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/categorie/controlli.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class controlliCard extends StatelessWidget {
  final Controlli controlli;
  controlliCard({this.controlli});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.blueGrey,
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
                  image: AssetImage(controlli.image),
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
                    Text(
                      controlli.name,
                      style: kTitleStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      controlli.description,
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
