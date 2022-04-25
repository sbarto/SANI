import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_app_sani/details/analisiSangue.dart';
import 'package:flutter_app_sani/details/esamiRm.dart';
import 'package:flutter_app_sani/details/visiteSpecialistiche.dart';
import 'package:flutter_app_sani/cards/categorie/analisiCard.dart';
import 'package:flutter_app_sani/cards/categorie/esamiDiagnosticiCard.dart';
import 'package:flutter_app_sani/cards/categorie/visiteMedicheCard.dart';
import 'package:flutter_app_sani/cards/categorie/controlliCard.dart';
import 'package:flutter_app_sani/cards/categorie/prescrizioniCard.dart';
import 'package:flutter_app_sani/models/categorie/esamiDiagnostici.dart';
import 'package:flutter_app_sani/models/categorie/visiteMediche.dart';
import 'package:flutter_app_sani/models/categorie/analisi.dart';
import 'package:flutter_app_sani/models/categorie/controlli.dart';
import 'package:flutter_app_sani/models/categorie/prescrizioni.dart';
import 'package:flutter_app_sani/utils/constants.dart';

class CategoryBaseScreen extends StatelessWidget {
  String nomeCategoria;
  String value;
  static const String visiteMedicheValue = "1";
  static const String esamiDiagnosticiValue = "2";
  static const String analisiValue = "3";
  static const String controlliValue = "4";
  static const String prescrizioniMedicheValue = "5";

  CategoryBaseScreen(this.nomeCategoria, this.value);
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
              SizedBox(height: 60.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(90.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(90.0),
                  ),
                  color: kGreyColorVisite,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(nomeCategoria, style: titoloGrande),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    switchCategory(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListView switchCategory() {
    switch (value) {
      case visiteMedicheValue:
        return returnVisiteMedichePage();
        break;
      case esamiDiagnosticiValue:
        return returnEsamiDiagnosticiPage();
        break;
      case analisiValue:
        return returnAnalisiPage();
        break;
      case controlliValue:
        return returnControlliPage();
        break;
      case prescrizioniMedicheValue:
        return returnPrescrizioniPage();
        break;
      default:
        return returnVisiteMedichePage();
    }
  }

  ListView returnVisiteMedichePage() {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 12,
        );
      },
      itemCount: visiteMedicheList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var visite = visiteMedicheList[index];
        return InkWell(
            onTap: () {
              if (visite.value == "1") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => visiteSpecialistiche(),
                  ),
                );
              }
            },
            child: visiteMedicheCard(visiteMediche: visite));
      },
    );
  }

  ListView returnEsamiDiagnosticiPage() {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 12,
        );
      },
      itemCount: esamiDiagnosticiList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var esami = esamiDiagnosticiList[index];
        return InkWell(
            onTap: () {
              if (esami.value == "1") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => esamiRM(),
                  ),
                );
              }
            },
            child: esamiDiagnosticiCard(esamiDiagnostici: esami));
      },
    );
  }

  ListView returnAnalisiPage() {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 12,
        );
      },
      itemCount: analisiList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var analisi = analisiList[index];

        return InkWell(
            onTap: () {
              if (analisi.value == "1") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => analisiSangue(),
                  ),
                );
              }
            },
            child: analisiCard(analisi: analisi));
      },
    );
  }

  ListView returnControlliPage() {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 12,
        );
      },
      itemCount: controlliList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(child: controlliCard(controlli: controlliList[index]));
      },
    );
  }

  ListView returnPrescrizioniPage() {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 12,
        );
      },
      itemCount: prescrizioniList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var prescrizioni = prescrizioniList[index];
        return InkWell(
          onTap: () {
            if (prescrizioni.value == "1") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => analisiSangue(),
                ),
              );
            }
          },
          child: prescrizioniCard(prescrizioni: prescrizioni),
        );
      },
    );
  }
}
