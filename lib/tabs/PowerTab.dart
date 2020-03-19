import 'dart:math';
import 'package:flutter/material.dart';


class PowerTab extends StatefulWidget {
  @override
  _PowerTabState createState() => _PowerTabState();
}

class _PowerTabState extends State<PowerTab> with AutomaticKeepAliveClientMixin {
  bool get wantKeepAlive => true;

  double num1;
  double num2;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                num1 = double.parse(value);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                num2 = double.parse(value);
              },
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  setState(() {
                    result = pow(num1, num2);
                  });
                },
              ),
            ),
            Text(
              '$result',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ]
        ),
      ),
    );
  }
}