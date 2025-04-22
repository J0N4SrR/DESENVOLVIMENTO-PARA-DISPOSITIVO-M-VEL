import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/exercicio1.dart';
import 'screens/exercicio2.dart';
import 'screens/exercicio3.dart';
import 'screens/exercicio4.dart';
import 'screens/exercicio5.dart';
import 'screens/exercicio6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 04',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/ex1': (context) => const Exercicio1(),
        '/ex2': (context) => const Exercicio2(),
        '/ex3': (context) => const Exercicio3(),
        '/ex4': (context) => const Exercicio4(),
        '/ex5': (context) => const Exercicio5(),
        '/ex6': (context) => const Exercicio6(),
      },
    );
  }
}
