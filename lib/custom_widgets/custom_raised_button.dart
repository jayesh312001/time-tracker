import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onPressed;

  const CustomRaisedButton({this.child, this.color, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          onPressed: onPressed,
          color: color,
          child: child,
          elevation: 3,
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
