import 'package:flutter/material.dart';
import 'package:flutter_app_sani/utils/constants.dart';
import 'package:flutter_app_sani/models/categories.dart';
import 'package:flutter_app_sani/models/visiteMediche.dart';

class CategoryDetail extends StatelessWidget {
  final Category category;
  CategoryDetail(Category categoryArrived, this.category);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.0),
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
                        Text(category.name, style: kTitleStyle),
                      ],
                    ),
                    ListView.builder(
                      itemCount: visiteMedicheList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        var visiteMediche = visiteMedicheList[index];

                        return InkWell(
                            onTap: () {},
                            child: CategoryDetail(category, category));
                        //  CategoryDetail(visiteMediche: visiteMediche));
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
