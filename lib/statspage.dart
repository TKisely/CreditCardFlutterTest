import 'package:flutter/material.dart';
import 'package:horizontal_list_tester/horizontal_statbar.dart';

class StatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HorizontalStatBar(
              percentage: 25,
            ),
            HorizontalStatBar(
              percentage: 30,
            ),
            HorizontalStatBar(
              percentage: 40,
            ),
            HorizontalStatBar(
              percentage: 5,
            ),
          ]),
    );
  }
}
