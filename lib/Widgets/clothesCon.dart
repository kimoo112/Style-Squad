// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:clothes/Screens/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Constant/colors.dart';

class ClothesContainer extends StatelessWidget {
  const ClothesContainer(
      {super.key,
      required this.image,
      required this.name,
      this.des = "",
      required this.color,required this.price});
  final image;
  final name;
  final price;
  final des;
  final color;
  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DetailsScreen(
                            img: image,
                            Name: name,
                            color: color, price: price,
                          )));
            },
            child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: KWidth * .9,
                height: 170,
                decoration: BoxDecoration(
                  color: cclothes,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: TextStyle(color: cdark, fontSize: 22),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            des,
                            style: TextStyle(color: cdark, fontSize: 15),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 138,
                            height: 39,
                            decoration: BoxDecoration(
                              color: cmain,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Go To Details",
                                    style: TextStyle(color: cclothes),
                                  ),
                                  Icon(Icons.info_outline_rounded, color: clight),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Hero(
                          tag: image,
                          transitionOnUserGestures : true,
                          child: Image.asset(image)),
                    ),
                  ],
                )),
          )
        ]),
      ],
    );
  }
}
