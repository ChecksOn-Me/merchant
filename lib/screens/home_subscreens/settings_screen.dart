import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../login_screen.dart';

class SettingsScreen extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _auth.signOut();
              Navigator.popUntil(
                context,
                ModalRoute.withName(LoginScreen.id),
              );
            },
          ),
          Text('Sign out as ${_auth.currentUser.email}'),
        ],
      ),
    );
  }
}
