import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onPressed;
  final double borderRadius;
  final double height;
  final double elevation;

  CustomRaisedButton(
      {this.child,
      this.color,
      this.onPressed,
      this.borderRadius: 4.0,
      this.height: 60,
      this.elevation: 3});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
          onPressed: onPressed,
          color: color,
          child: child,
          elevation: elevation,
        ),
      ),
    );
  }
}

// child: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     (logo == null) ? Icon(Icons.email) : Image.asset(logo),
//     Text(
//       (name == null) ? 'Go Anonymous' : 'Sign in with $name',
//       style: TextStyle(
//           color:
//               (color == Colors.white) ? Colors.black : Colors.white),
//     ),
//   ],
// ),
