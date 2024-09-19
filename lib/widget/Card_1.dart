import 'package:flutter/material.dart';

class Card_1 extends StatelessWidget {
  late var name;
  Card_1(var this.name);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      color: Color(0xffF6F2F2),
      clipBehavior: Clip.hardEdge,
      elevation: 8,
      shape: LinearBorder(),
      child: SizedBox(
        height: 100,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
