import 'package:fitnessapp/pages/me_page.dart';
import 'package:fitnessapp/pages/reports_page.dart';
import 'package:fitnessapp/pages/training_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPage = 0;
  final _pageOptions = [
    const Training(),
    const Reports(),
    const Me(),
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body:_pageOptions[selectedPage] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 45,color: Colors.white,),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 45,color: Colors.white,),
              label: "Services"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined,size: 40,color: Colors.white,),
              label: "Context"
          ),

        ],
        selectedItemColor: Colors.white,
        currentIndex: selectedPage, //optional, default as 0
        onTap: (int currentIndex) {
          setState(() {
            selectedPage = currentIndex;
          });
        },
      ),
    );
  }
}
