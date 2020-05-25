import 'package:flutter/material.dart';

class CardAdder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.arrow_downward,
              color: Colors.blueGrey,
              size: 32,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                hintText: 'Enter your name',
                filled: true,
                fillColor: Colors.blueGrey,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a valid name';
                }
                return null;
              },
            ),
            Row(children: <Widget>[
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    hintText: 'Enter your SCV',
                    filled: true,
                    fillColor: Colors.blueGrey,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a code';
                    }
                    return null;
                  },
                ),
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    hintText: 'Enter your SCV',
                    filled: true,
                    fillColor: Colors.blueGrey,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a code';
                    }
                    return null;
                  },
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 128, top: 8, bottom: 8),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  hintText: 'Enter your SCV',
                  filled: true,
                  fillColor: Colors.blueGrey,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a code';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
