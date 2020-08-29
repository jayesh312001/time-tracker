import 'package:flutter/material.dart';
import 'package:time_tracker/custom_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  final String assetName;
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  SocialSignInButton(
      {@required this.assetName,
      @required this.text,
      this.color,
      this.textColor,
      this.onPressed})
      : assert(text != null),
        assert(assetName != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(fontSize: 15, color: textColor),
              ),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0.0,
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
