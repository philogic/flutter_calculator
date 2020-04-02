import 'package:flutter/material.dart';


class DivisionTab extends StatefulWidget {
  @override
  _DivisionTabState createState() => _DivisionTabState();
}

class _DivisionTabState extends State<DivisionTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;


  double num1;
  double num2;
  var result;
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
                  'Divide',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  setState(() {
                    result = num1 / num2;
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
