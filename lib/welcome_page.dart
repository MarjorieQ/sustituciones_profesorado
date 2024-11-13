import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Text('Bienvenido, ${FirebaseAuth.instance.currentUser?.email}!'),
      ),
    );
  }
}






