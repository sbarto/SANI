import 'package:flutter/material.dart';
import 'package:flutter_app_sani/cards/categoryCard.dart';
import 'package:flutter_app_sani/utils/goToProfile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:flutter_app_sani/models/categories.dart';

class MyHomePage extends StatelessWidget {
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
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Benvenuto,\n",
                            style: kTitleStyle.copyWith(
                              fontSize: 26.0,
                              color: kGrey2Color,
                            ),
                          ),
                          TextSpan(
                            text: "nella tua cartella sanitaria",
                            style: kTitleStyle.copyWith(
                              fontSize: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    goToProfile(context),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                height: 55.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: kGreyColorVisite,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "cerca...",
                      icon: Icon(
                        FontAwesomeIcons.search,
                        size: 20.0,
                        color: kBlue1Color,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: kGrey1Color,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Categorie", style: kTitleStyle),
                      ],
                    ),
                    ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: categoriesList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        var category1 = categoriesList[index];
                        return InkWell(
                            child: categoryCard(category: category1));
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
