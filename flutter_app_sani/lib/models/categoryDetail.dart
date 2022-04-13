import 'package:flutter/material.dart';
import 'package:flutter_app_sani/models/categories.dart';

class categoryDetail extends StatelessWidget {
  final Category category;
  categoryDetail({this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[Container(margin: EdgeInsets.all(5)), Text("data")],
      ),
    );
  }
}
