import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sustituciones_profesorado/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sustituciones_profesorado/singup_page.dart';
import 'package:sustituciones_profesorado/welcome_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/welcome': (context) => WelcomePage(),
      },
    );
  }
}



