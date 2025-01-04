import 'package:flutter/material.dart';
import 'package:tictok_app/constants.dart';
import 'package:tictok_app/views/screens/auth/login_screen.dart';
import 'package:tictok_app/views/screens/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tik Tok App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        debugShowCheckedModeBanner: false,
        home: SignupScreen());
  }
}
