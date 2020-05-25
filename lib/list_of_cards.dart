import 'package:flutter/material.dart';
import 'info_list.dart';
import 'resources/constants.dart';
import 'statspage.dart';
import 'resources/card_db.dart';

class ListOfCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cardsList.length,
            itemBuilder: (context, position) {
              return InfoList(elementNum: position);
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: StatePage(),
          ),
        ),
        Center(
          child: Icon(
            Icons.arrow_upward,
            color: Colors.blueGrey,
            size: 32,
          ),
        ),
      ],
    );
  }
}
