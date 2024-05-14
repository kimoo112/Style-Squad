// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final double duration;
  final Widget nextScreen;

  SplashScreen({
    Key? key,
    required this.duration,
    required this.nextScreen, required double seconds,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: widget.duration.toInt()), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => widget.nextScreen),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                     
         
                     decoration: const BoxDecoration(
                 image: DecorationImage(
            image: AssetImage(
              'assets/images/Background.jpg',
            ),
            fit: BoxFit.cover,
                 ),
               ),
        child: Center(
          child: Image.asset('assets/images/Logo.png',width: 300,),
        ),
      ),
    );
  }
}
