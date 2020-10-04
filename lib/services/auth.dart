import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';

class User {
  final String uid;
  User({@required this.uid});
}

abstract class AuthBase {
  Future<User> signInAnonymously();
  Future<void> signOut();
  Future<User> checkCurrentUser();
}

class Auth implements AuthBase {
  final _firebaseAuth = auth.FirebaseAuth.instance;
  User _userFromFirebase(auth.User user) {
    if (user == null) {
      return null;
    }
    return User(uid: user.uid);
  }

  Future<User> signInAnonymously() async {
    final signedInUser = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(signedInUser.user);
  }

  Future<User> checkCurrentUser() async {
    return await _userFromFirebase(_firebaseAuth.currentUser);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
