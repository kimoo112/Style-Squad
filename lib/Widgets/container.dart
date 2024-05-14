// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Constant/colors.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key, required this.image, required this.text});
  final image;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: clight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: clight, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
