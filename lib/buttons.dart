import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final color;
  final textColor;
  final buttonText;
  final buttonColor;

  Mybutton({this.color, this.textColor, this.buttonText, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: buttonColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
