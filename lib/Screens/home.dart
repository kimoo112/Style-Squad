// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names

import 'package:clothes/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Constant/colors.dart';
import '../Widgets/clothesCon.dart';
import '../Widgets/container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;
    final KHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: cmain,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Style Squad",
              style: TextStyle(fontSize: 30, color: clight)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
            },
            icon: Icon(
              Icons.logout_outlined,
              color: cclothes,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back, User !",
                    style: TextStyle(color: clight, fontSize: 30),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "How are you feeling today ?",
                    style: TextStyle(color: clight, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  ClothesContainer(
                    image: "assets/images/Shirt.png",
                    name: "White Polo Shirt",
                    des: " Classic and versatile\n       white polo shirt ",
                    color:clight2, price: 75,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg (12).png",
                    name: "Red Polo Shirt",
                    des: "Vibrant red polo shirt\n    adds a pop of color ",
                    color: Color(0xFFd7000e), price: 60,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg (8).png",
                    name: "Black Hoodie",
                    des: "     Sleek black hoodie \ncasual and comfortable ",
                    color: cdark2, price: 90,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg (9).png",
                    name: "White Hoodie",
                    des: "Clean and cozy white hoodie\n        perfect for a relaxed ",
                    color:clight2, price: 80,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg (14).png",
                    name: "Orange Shirt",
                    des: "A basic shirt in \n   orange hue",
                    color: Colors.orange[800], price: 50,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg (13).png",
                    name: "Blue Hoodie",
                    des: "Casual and cozy \n   blue hoodie",
                    color: Color(0xFF032D6D), price: 110,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg 11.png",
                    name: "Red Hoodie",
                    des: "      Stylish red hoodie \n comfortable and fashion",
                    color: Color(0xFFb22929), price: 95,
                  ),
                  ClothesContainer(
                    image: "assets/images/pngegg 12.png",
                    name: "Green Basic Shirt",
                    des: "Simple Green basic shirt \n             for a classic ",
                    color: Color(0xFF018f41), price: 40,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
