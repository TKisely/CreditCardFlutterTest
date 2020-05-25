import 'package:flutter/material.dart';

class HorizontalStatBar extends StatelessWidget {
  final double percentage;
  HorizontalStatBar({this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Container(
        width: percentage * 3,
        height: 10,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.blueGrey.shade900, Colors.blueAccent.shade700],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
