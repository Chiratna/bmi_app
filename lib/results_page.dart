import 'package:flutter/material.dart';
import 'constants.dart';
import 'rounded_container.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi, @required this.message, @required this.result});

  final String bmi, result, message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 12.0, left: 16.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 16,
            child: RoundedContainer(
              color: kActiveBtnColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text(
                      result.toUpperCase(),
                      style: TextStyle(
                          color: Color(0xFF53b97b),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  Text(
                    bmi,
                    style: kNumericStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 64.0,
                    ),
                    child: Text(
                      message,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              color: Color(0xFFEB4856),
              margin: EdgeInsets.only(top: 5.0),
              height: 80.0,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
