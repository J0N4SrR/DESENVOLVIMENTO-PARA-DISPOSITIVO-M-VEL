import 'package:flutter/material.dart';

class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 03: Theme Override',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tema Azul com Sobrescrita')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.lightBlue,
              alignment: Alignment.center,
              child: const Text(
                'Widget',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Theme(
              data: ThemeData(scaffoldBackgroundColor: Colors.grey[700]!),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey[700],
                child: Theme(
                  data: ThemeData(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    alignment: Alignment.center,
                    child: const Text(
                      'Widget',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
