// ignore_for_file: prefer_const_constructors, unused_import

import 'package:clothes/Screens/Signin.dart';
import 'package:clothes/Screens/details.dart';
import 'package:clothes/Screens/home.dart';
import 'package:flutter/material.dart';
import 'Constant/colors.dart';
import 'Screens/login.dart';
import 'Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Lato',
          textTheme: const TextTheme(
            titleLarge: TextStyle(letterSpacing: 1, color: clight),
          )),
      home:
          // HomeScreen() 
          SplashScreen(
        duration: 4.99,
        nextScreen: LoginScreen(),
        seconds: 4.99,
      ),
    );
  }
}
