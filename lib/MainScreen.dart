import 'package:flutter/material.dart';
import 'package:product/HomeScreen.dart';
import 'package:product/ListScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current = 0;
  List<Widget> Screens = [HomeScreen(), ListScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Store"),
        
      ),
      drawer: Drawer(),
      body: Screens[current],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.purple[100],
        selectedItemColor: Colors.white,
        onTap: (value) => {
          setState(() {
           current=value; 
          }),
        },
        currentIndex: current,
        items: [BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon:Icon(Icons.home_filled),
        label: "Home"),
        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon:Icon(Icons.list_alt_outlined),
        label: "Category"),
        ],
      ),
    );
  }
}
