import 'package:flutter/material.dart';
import 'package:flutter_app_sani/cards/categoryCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:flutter_app_sani/models/categories.dart';

class MyHomePage2 extends StatelessWidget {
  String nomeCategoria;
  MyHomePage2(this.nomeCategoria);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Spacer(),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/user.png"),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: kBlue2Color,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(nomeCategoria, style: kTitleStyle),
                      ],
                    ),
                    ListView.builder(
                      itemCount: categoriesList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        var category = categoriesList[index];

                        return InkWell(
                            onTap: () {},
                            child: categoryCard(category: category));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  CategoriesItem({this.title, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: kGrey2Color,
              width: 1.0,
            )),
        child: Row(
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: color,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 12.0),
            Text(title, style: kCategoryStyle),
          ],
        ),
      ),
    );
  }
}
