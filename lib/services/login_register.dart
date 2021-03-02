import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginOrRegister {
  LoginOrRegister({@required this.email, @required this.password});

  final _auth = FirebaseAuth.instance;
  static String message = 'logging in...';
  final String email;
  final String password;

  void login() async {
    try {
      final user = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (user != null) {
        print(user);
        print('SUCCESSSSSSSful login');
        //here is where we add in the Navigator when second page is ready
      }
    } catch (e) {
      print(e);
      if (e.code == 'user-not-found') {
        register();
      } else if (e.code == 'wrong-password') {
        message = 'Password Incorrect';
      }
    }
  }

  void register() async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (newUser != null) {
        print(newUser);
        print('SUCCCCEEESSSSSSSful registration and login')
        //here is where we add Navigator to second page
      }
    } catch (e) {
      message = "Invalid email or password, try again";
      //add more specific messaging here
    }
  }
}
