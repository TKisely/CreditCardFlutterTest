import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:horizontal_list_tester/add_card.dart';
import 'package:horizontal_list_tester/list_of_cards.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ListOfCards(),
        CardAdder(),
      ],
      scrollDirection: Axis.vertical,
    );
  }
}
