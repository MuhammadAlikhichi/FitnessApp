import 'package:fitnessapp/pages/page1.dart';
import 'package:fitnessapp/pages/page2.dart';
import 'package:fitnessapp/pages/page3.dart';
import 'package:flutter/material.dart';
class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  int activeIndex = 0;
  List listStock = [
   Page1(),
   Page2(),
   Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  activeIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
              controller: PageController(viewportFraction: 1),
              itemCount: listStock.length,
              itemBuilder: (context, index) {
                return listStock[index];
              }),
          Container(
            alignment: Alignment.bottomCenter,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  listStock.length,
                      (index) => Indicator(
                    isActive: activeIndex == index ? true : false,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Indicator extends StatelessWidget {
  final bool isActive;
  Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.0,
      width: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: isActive ? Colors.green : Colors.white,
      ),
    );
  }
}