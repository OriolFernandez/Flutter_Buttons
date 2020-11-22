import 'package:flutter/material.dart';
import 'package:flutter_buttons/common_widget/custom_raised_button.dart';

class SignIngButton extends CustomRaisedButton {
  SignIngButton({
    @required String text,
    String imagePath,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: _content(imagePath, text, textColor),
          borderRadius: 8,
          color: color,
          height: 70,
          onPressed: onPressed,
        );

  static Widget _content(String imagePath, String text, Color textColor) {
    Widget _widget;
    if (imagePath == null) {
      _widget = Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 18,
        ),
      );
    } else {
      _widget = Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(imagePath),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ]);
    }
    return _widget;
  }
}
