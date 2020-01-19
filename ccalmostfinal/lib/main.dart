import 'package:flutter/material.dart';
import 'chat_data.dart';
import 'listWidget.dart';
import 'profile.dart';
import 'HowappAppbar.dart';

int currentIndex = 0;
void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  List<Widget> selectedPage = [
    Profile(),
    ListOfChats(chatData: chatData),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            iconSize: 25,
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.teal[600],
                icon: Icon(Icons.home),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                title: Text(
                  'HowApp',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.teal[800],
              ),
            ],
            onTap: (index) {
              setState(
                () {
                  currentIndex = index;
                },
              ); //start working on profile.dart
            },
          ),
          appBar: AppBar(
              bottom: tabBar(),
              backgroundColor: Colors.teal[800],
              title: titleBar()),
          body: selectedPage[currentIndex]),
    );
  }
}
