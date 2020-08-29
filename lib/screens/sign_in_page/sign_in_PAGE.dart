import 'package:flutter/material.dart';
import 'package:time_tracker/screens/sign_in_page/sign_in_button.dart';
import 'package:time_tracker/screens/sign_in_page/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Time Tracker'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              SocialSignInButton(
                text: 'Sign in with Google',
                assetName: 'images/google-logo.png',
                color: Colors.white,
                textColor: Colors.black87,
                onPressed: () {},
              ),
              SocialSignInButton(
                text: 'Sign in with Facebook',
                assetName: 'images/facebook-logo.png',
                color: Color(0XFF334D92),
                textColor: Colors.white,
                onPressed: () {},
              ),
              SignInButton(
                text: 'Sign in with Email',
                color: Colors.teal[700],
                textColor: Colors.white,
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('or', textAlign: TextAlign.center),
              ),
              SignInButton(
                text: 'Go Anonymous',
                color: Colors.lime[300],
                textColor: Colors.black,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
