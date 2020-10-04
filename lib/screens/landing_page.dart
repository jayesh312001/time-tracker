import 'package:flutter/material.dart';
import 'package:time_tracker/screens/home_screen/home_PAGE.dart';
import 'package:time_tracker/screens/sign_in_screen/sign_in_PAGE.dart';
import 'package:time_tracker/services/auth.dart';

class LandingPage extends StatefulWidget {
  final AuthBase auth;

  LandingPage({@required this.auth});
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;

  @override
  void initState() {
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
    User user = await widget.auth.checkCurrentUser();
    _updateUser(user);
  }

  void _updateUser(User user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        auth: widget.auth,
        onSignIn: _updateUser,
      );
    }
    return HomePage(
      auth: widget.auth,
      onSignOut: () => _updateUser(null),
    );
  }
}
