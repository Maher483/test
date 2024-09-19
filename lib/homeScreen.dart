import 'package:flutter/material.dart';
import 'package:midecal_app/Modules.dart';
import 'package:midecal_app/widget/card_1.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("image/Intersectcorners-1.png"),
                Image.asset("image/Intersectcorners.png"),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("image/xp.png"),
                  maxRadius: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abdelrhman Ahmed Maher",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                    ),
                    Text("500XP | Rank 1"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            LinearPercentIndicator(
              barRadius: Radius.circular(45),
              percent: 0.5,
              progressColor: Color(0xff3058a6),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  borderOnForeground: false,
                  color: const Color(0xffF6F2F2),
                  clipBehavior: Clip.hardEdge,
                  elevation: 8,
                  shape: LinearBorder(),
                  child: SizedBox(
                    height: 120,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "image/xp.png",
                          scale: 10,
                        ),
                        const Text(
                          "0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          "XP Points",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  borderOnForeground: false,
                  color: const Color(0xffF6F2F2),
                  clipBehavior: Clip.hardEdge,
                  elevation: 8,
                  shape: LinearBorder(),
                  child: SizedBox(
                    height: 120,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "image/fire.png",
                          scale: 10,
                        ),
                        const Text(
                          "0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          "Srteak",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                    borderOnForeground: false,
                    color: const Color(0xffF6F2F2),
                    clipBehavior: Clip.hardEdge,
                    elevation: 8,
                    shape: LinearBorder(),
                    child: SizedBox(
                      height: 120,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "image/chapter.png",
                            scale: 10,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            "Chapter",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Let's start the journey",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Modules_Page()));
                },
                child: Card_1("Modules")),
            GestureDetector(onTap: () {}, child: Card_1("Quizes")),
            GestureDetector(onTap: () {}, child: Card_1("Feedback")),
          ],
        ),
      ),
    );
  }
}
