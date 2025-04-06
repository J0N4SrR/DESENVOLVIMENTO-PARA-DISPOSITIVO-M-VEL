import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter is Fun!"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(right: 100.0, bottom: 500.0),
            width: 100.0,
            height: 100.0,
            color: Colors.deepOrange,
            child: const Center(
              child: Text(
                "Hi Mom! ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}