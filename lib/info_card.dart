import 'package:flutter/material.dart';
import 'resources/constants.dart';

class InfoCard extends StatelessWidget {
  final String bank;
  final String holderName;
  final int lastFourDigits;
  final int secretCode;

  Color lightGrColor;
  Color darkGrColor;

  InfoCard({
    this.bank,
    this.holderName,
    this.lastFourDigits,
    this.secretCode,
  }) {
    if (this.bank == 'MasterCard') {
      lightGrColor = kLightMasterGradColor;
      darkGrColor = kDarkMasterGradColor;
    } else if (this.bank == 'Visa') {
      lightGrColor = kLightVisaGradColor;
      darkGrColor = kDarkVisaGradColor;
    } else {
      lightGrColor = kLightAmericanGradColor;
      darkGrColor = kDarkAmericanGradColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [lightGrColor, darkGrColor])),
        height: 150.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.credit_card,
                    color: kLightColor,
                  ),
                ),
                Text(
                  bank,
                  style: TextStyle(
                    color: kLightColor,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      secretCode.toString(),
                      textAlign: TextAlign.end,
                      style: TextStyle(color: kLightColor),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '**** **** **** ' + lastFourDigits.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: kLightColor, fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                holderName,
                style: TextStyle(color: kLightColor, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
