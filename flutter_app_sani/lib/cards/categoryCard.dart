import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/categories.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import '../Screens/base_page_category.dart';

class categoryCard extends StatelessWidget {
  final Category category;
  categoryCard({this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: double.infinity,
        height: 100.0,
        child: Row(
          children: [
            Container(
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: kBlue2Color,
                image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 13.0),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.name,
                      style: titoloCategorie,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      category.description,
                      overflow: TextOverflow.ellipsis,
                      style: kCategoryStyle.copyWith(
                          color: Color.fromARGB(255, 65, 65, 65)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 90.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryBaseScreen(
                                  category.name, category.value)),
                        );
                      },
                      color: kGreenColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text(
                        "Apri",
                        style: kButtonStyle.copyWith(color: kGreen2Color),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
