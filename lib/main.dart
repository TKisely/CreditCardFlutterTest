import 'package:flutter/material.dart';
import 'info_list.dart';
import 'resources/constants.dart';
import 'list_of_cards.dart';
import 'main_view.dart';
import 'add_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: kDarkColor,
        child: SafeArea(
          child: Scaffold(
            //body: ListOfCards(),
            body: MainView(),
            backgroundColor: kDarkColor,
          ),
        ),
      ),
    );
  }
}
