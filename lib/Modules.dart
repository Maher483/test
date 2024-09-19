import 'package:flutter/material.dart';
import 'package:midecal_app/Module_1/Module_1.dart';
import 'package:midecal_app/widget/card_1.dart';

class Modules_Page extends StatelessWidget {
  const Modules_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("image/Intersectcorners-1.png"),
                  Image.asset("image/Intersectcorners.png"),
                ],
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Module1(),
                      ),
                    );
                  },
                  child: Card_1("Module 1")),
              GestureDetector(onTap: () {}, child: Card_1("Module 2")),
              GestureDetector(onTap: () {}, child: Card_1("Module 3")),
              GestureDetector(onTap: () {}, child: Card_1("Module 4")),
              GestureDetector(onTap: () {}, child: Card_1("Module 5")),
              GestureDetector(onTap: () {}, child: Card_1("Module 6")),
            ],
          ),
        ),
      ),
    );
  }
}
