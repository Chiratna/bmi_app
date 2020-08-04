import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  RoundedContainer({this.cardChild, this.onPress, this.color});

  final Widget cardChild;
  final Function onPress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(16.0),
      ),
    );
  }
}
