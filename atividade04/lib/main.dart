import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/exercicio1_formulario.dart';
import 'screens/exercicio2_fab.dart';
import 'screens/exercicio3_listaTarefas.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/form': (context) => const FormScreen(),
        '/fab': (context) => const FabScreen(),
        '/tasks': (context) => const TaskListScreen(),
      },
    );
  }
}
