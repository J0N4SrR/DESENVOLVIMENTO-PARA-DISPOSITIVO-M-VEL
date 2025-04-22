import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 02: Blue Theme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, 
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tema Azul')),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue, 
            child: const Center(
              child: Text(
                'Widget',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

