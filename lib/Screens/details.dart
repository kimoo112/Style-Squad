// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:clothes/Constant/colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen(
      {super.key,
      required this.img,
      required this.Name,
      required this.color,
      required this.price});
  final img;
  final Name;
  final Color color;
  final int price;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(Name,
            style: TextStyle(
                color: cclothes, fontSize: 20, fontWeight: FontWeight.bold)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: cclothes)),
      ),
      backgroundColor: color,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: color,
                  alignment: Alignment.bottomLeft,
                  // child:
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 20.0, bottom: 10, right: 20.0),
                  //   child:
                  //   Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         Name,
                  //         style: TextStyle(
                  //             color: cclothes,
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //       Row(
                  //         children: [
                  //           Icon(
                  //             Icons.attach_money_outlined,
                  //             color: cbutton,
                  //             size: 18,
                  //           ),
                  //           Text(
                  //             "333",
                  //             style: TextStyle(color: cclothes, fontSize: 18),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ),
              Expanded(
                  flex: 7,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: cclothes,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(76, 36, 4, 20),
                          offset: Offset(1, 3),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33)),
                    ),
                  )),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 80,
              child: Column(
                children: [
                  Hero(
                      tag: img,
                      transitionOnUserGestures: true,
                      child: Image.asset(img)),
                ],
              )),
          Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Name,
                  style: TextStyle(color: color, fontSize: 18),
                ),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.attach_money_outlined,
                    color: cmoney,
                    size: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, bottom: 8.0, top: 8.0),
                    child: Text(
                      "$price",
                      style: TextStyle(color: color, fontSize: 18),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
