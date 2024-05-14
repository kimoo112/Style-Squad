// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:clothes/Screens/Signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Constant/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      
       Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),

            Image.asset("assets/images/Logo.png",width: 150,),
            Text(
              "WELCOME",
              style: TextStyle(fontSize: 33,color: clight),
            ),
            SizedBox(height: 10,),
             Text(
              "Style Squad",
              style: TextStyle(fontSize: 50,color: clight),
            ),
            Spacer(),

            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignInScreen()));
                          
              },
              child: Container(
                width: 321,
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                color: cbutton,
                
            
                ),
                
                alignment: Alignment.center,
                child: Text("Login With Email",style: TextStyle(fontSize: 25,color: cdark),),
              ),
            ),
            SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account",
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
                          child: Text("Sign Up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)))
                                   ],
              ),
  
            SizedBox(height: 30,),
  
          ],
        ),
      ),
    );
  }
}
