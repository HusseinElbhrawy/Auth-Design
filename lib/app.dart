import 'package:auth_screens/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          color: Colors.transparent,
        ),
      ),
      home: const SignUpScreen(),
    );
  }
}
