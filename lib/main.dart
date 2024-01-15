import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}


class MyHome extends StatelessWidget {
  const MyHome({super.key});

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
          //Handle button tap
        },
      ),
    );
  }
}


