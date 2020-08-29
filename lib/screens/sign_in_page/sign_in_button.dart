import 'package:flutter/material.dart';
import 'package:time_tracker/custom_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  SignInButton({this.text, this.color, this.textColor, this.onPressed})
      :  
      assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(fontSize: 15, color: textColor),
          ),
          color: color,
          onPressed: onPressed,
        );
}
