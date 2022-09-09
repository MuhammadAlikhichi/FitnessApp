import 'package:fitnessapp/pages/day10.dart';
import 'package:flutter/material.dart';

import 'day1.dart';
import 'day2.dart';
import 'day3.dart';
import 'day4.dart';
import 'day5.dart';
import 'day6.dart';
import 'day7.dart';
import 'day8.dart';
import 'day9.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List Days =[
    Day1(), Day2(), Day3(), Day4(), Day5(), Day6(), Day7(), Day8(), Day9(), Day10(),
    Day1(), Day2(), Day3(), Day4(), Day5(), Day6(), Day7(), Day8(), Day9(), Day10(),
    Day1(), Day2(), Day3(), Day4(), Day5(), Day6(), Day7(), Day8(), Day9(), Day10(),
  ];
  List ThirtyDays = [
    DayDetail(day: 1, exercise: 15),
    DayDetail(day: 2, exercise: 15),
    DayDetail(day: 3, exercise: 15),
    DayDetail(day: 4, exercise: 0),
    DayDetail(day: 5, exercise: 25),
    DayDetail(day: 6, exercise: 15),
    DayDetail(day: 7, exercise: 15),
    DayDetail(day: 8, exercise: 0),
    DayDetail(day: 9, exercise: 15),
    DayDetail(day: 10, exercise: 15),
    DayDetail(day: 11, exercise: 17),
    DayDetail(day: 12, exercise: 0),
    DayDetail(day: 13, exercise: 17),
    DayDetail(day: 14, exercise: 17),
    DayDetail(day: 15, exercise: 19),
    DayDetail(day: 16, exercise: 0),
    DayDetail(day: 17, exercise: 17),
    DayDetail(day: 18, exercise: 19),
    DayDetail(day: 19, exercise: 21),
    DayDetail(day: 20, exercise: 0),
    DayDetail(day: 21, exercise: 21),
    DayDetail(day: 22, exercise: 23),
    DayDetail(day: 23, exercise: 21),
    DayDetail(day: 24, exercise: 0),
    DayDetail(day: 25, exercise: 21),
    DayDetail(day: 26, exercise: 23),
    DayDetail(day: 27, exercise: 23),
    DayDetail(day: 28, exercise: 0),
    DayDetail(day: 29, exercise: 23),
    DayDetail(day: 30, exercise: 23),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 180.0),
          child: Container(
            child: ListView.builder(
                itemCount: ThirtyDays.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding:  EdgeInsets.only(bottom: 10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Days[index]));
                      },

                      child: Container(
                        padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 20.0),
                        margin:EdgeInsets.only(left: 15.0,right: 15.0),
                        height: screenSize.height*0.1,
                        width: screenSize.width*1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.shade300,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Day"),
                                SizedBox(width: 5),
                                Text(ThirtyDays[index].day.toString()),

                              ],
                            ),
                            SizedBox(height: 15,),
                            ThirtyDays[index].day%4==0?Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rest"),
                                Icon(Icons.ac_unit)
                              ],
                            ):Text("${ThirtyDays[index].exercise} Exercises"),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ),
      ],
    );
  }
}
class DayDetail {
  int day;
  int exercise;

  DayDetail({required this.day,required this.exercise});
}