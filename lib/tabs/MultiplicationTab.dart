import 'package:flutter/material.dart';


class MultiplicationTab extends StatefulWidget {
  @override
  _MultiplicationTabState createState() => _MultiplicationTabState();
}

class _MultiplicationTabState extends State<MultiplicationTab> with AutomaticKeepAliveClientMixin {
  @override
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
                    result = num1 * num2;
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
