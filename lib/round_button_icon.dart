import 'package:flutter/material.dart';

class RoundButtonIcon extends StatelessWidget {
  RoundButtonIcon({this.icon, this.onPress});

  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      child: Icon(icon),
      fillColor: Color(0xFF838690),
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      onPressed: onPress,
    );
  }
}
