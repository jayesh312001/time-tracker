import 'package:flutter/material.dart';
import 'package:time_tracker/screens/sign_in_page/sign_in_PAGE.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Time Tracker',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: SignInPage());
  }
}
