import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

double margin = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            margin = 100;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          color: Colors.blue,
          width: 200,
          margin: EdgeInsets.all(margin),
        ),
      ),
    );
  }
}
