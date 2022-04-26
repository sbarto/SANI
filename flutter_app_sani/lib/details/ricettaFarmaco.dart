import 'package:flutter/material.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class RicettaFarmaco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: grayPrimaryColor,
        elevation: 0,
      ),
      backgroundColor: grayPrimaryColor,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Image.asset("assets/ricettaFarmaco.png")),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
