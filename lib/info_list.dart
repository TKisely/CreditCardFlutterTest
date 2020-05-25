import 'package:flutter/material.dart';
import 'info_card.dart';
import 'resources/constants.dart';
import 'dart:math';
import 'resources/card_db.dart';

class InfoList extends StatelessWidget {
  Random rnd = new Random();
  int elementNum;
  InfoList({this.elementNum});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: InfoCard(
          bank: cardsList[elementNum].bankBrand,
          holderName: cardsList[elementNum].cardHolderFirstName +
              ' ' +
              cardsList[elementNum].cardHolderSecondName,
          lastFourDigits: cardsList[elementNum].cardLastFourNumber,
          secretCode: cardsList[elementNum].securityCode,
        ),
      ),
    );
  }
}
