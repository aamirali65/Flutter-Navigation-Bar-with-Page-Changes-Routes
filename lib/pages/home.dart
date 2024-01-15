import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      body: Center(
        child: Text('Home',style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    );
  }
}
