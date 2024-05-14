// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Constant/colors.dart';
import 'Signin.dart';
import 'home.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cmain,
      
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              top: 0,
              child: Image.asset(
                "assets/images/Group 28.png",
              )),
       Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Image.asset(
                    "assets/images/Logo.png",
                    width: 150,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, color: clight),
                  ),
                  TextField(style: TextStyle(
                        color: clight,
                      ),decoration: InputDecoration(hintText: "Name",hintStyle: TextStyle(color: clight.withOpacity(.5))),),
                  SizedBox(height: 20,),
                  TextField(style: TextStyle(
                        color: clight,
                      ),decoration: InputDecoration(hintText: "Email",hintStyle: TextStyle(color: clight.withOpacity(.5))),),
                  SizedBox(height: 20,),
                  TextField(style: TextStyle(
                        color: clight,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password",hintStyle: TextStyle(color: clight.withOpacity(.5))),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Forgot Password?",style: TextStyle(color: clight),),
                      
                    ],
                  ),
                  SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: [
                                  GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => HomeScreen()));
                                  
                  },
                  child: Container(
                    width: 321,
                    height: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                    color: cbutton,
                    
                
                    ),
                    alignment: Alignment.center,
                    child: Text("SIGNUP",style: TextStyle(fontSize: 25,color: cdark),),
                  ),
                ),
                                ],
                              ),
                SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                                  style:
                                      TextStyle(color: Colors.white54, fontSize: 18)),
                   
                          TextButton(
                              onPressed: () {
                                //Navigate Kimo To a Sign Up Screen
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignInScreen()));
                              },
                              child: Text("Sign In",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 18)))
                                       ],
                  ),

              ]),
            )
          
        ],
      ),
    );
  }
}