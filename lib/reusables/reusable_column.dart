
import 'package:flutter/material.dart';

class reusableColumn extends StatelessWidget {
  reusableColumn({
    super.key,
    required this.text,
    required this.string,
  });

  String text;
  String string;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: Image.asset("images/$string.png"),
          ),
        ),
      ],
    );
  }
}