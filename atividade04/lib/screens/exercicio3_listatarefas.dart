import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<bool> _isCheckedList = List.generate(5, (index) => false);

  final List<Map<String, String>> _tasks = [
    {
      "title": "Reunião com equipe de design",
      "subtitle": "Hoje, às 14:00 - Google Meet",
    },
    {
      "title": "Revisar proposta do cliente",
      "subtitle": "Deadline amanhã - Pasta 'Propostas'",
    },
    {
      "title": "Estudar Flutter - Cards",
      "subtitle": "Capítulo 4 do livro de componentes",
    },
    {
      "title": "Responder e-mails pendentes",
      "subtitle": "Filtrar por: Não lidos",
    },
    {
      "title": "Fazer backup do projeto",
      "subtitle": "Salvar no Google Drive e HD externo",
    },
  ];

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Bem-vindo!"),
        content: const Text("Você está no App de Notas de Tarefas"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Fechar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Tarefas',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Exercicio 3'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Função ainda não implementada.")),
                  );
                },
                child: const Text('Ver tarefas concluídas'),
              ),
              const SizedBox(height: 16),
              Text(
                'Você tem ${_tasks.length} tarefas pendentes',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: _tasks.length,
                  itemBuilder: (context, index) {
                    final task = _tasks[index];
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Selecionado: ${task["title"]}')),
                          );
                        },
                        child: ListTile(
                          leading: const Icon(Icons.event_note),
                          title: Text(task["title"]!),
                          subtitle: Text(task["subtitle"]!),
                          trailing: Checkbox(
                            value: _isCheckedList[index],
                            onChanged: (value) {
                              setState(() {
                                _isCheckedList[index] = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          onPressed: _showDialog,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
