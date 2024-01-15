import 'package:bottom_nav/pages/about.dart';
import 'package:bottom_nav/pages/contact.dart';
import 'package:bottom_nav/pages/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // add karo dosra pages or classes
  final List tabItems = [Home(), About(), Contact()];
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepPurple,
        backgroundColor: Colors.deepPurple.shade400,
        buttonBackgroundColor: Colors.deepPurple,
        items: const[
          Icon(Icons.home, size: 30,color: Colors.white),
          Icon(Icons.search, size: 30,color: Colors.white),
          Icon(Icons.settings, size: 30,color: Colors.white,),
        ],
        onTap: (index) {
          // index 0 sa shuru hota ha or array ka pehla index 0
          setState(() {
            activePage = index;
          });
        },
      ),
      body: tabItems[activePage],
    );
  }
}

