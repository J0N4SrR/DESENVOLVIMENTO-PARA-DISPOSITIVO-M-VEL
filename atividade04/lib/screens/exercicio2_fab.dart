import 'package:flutter/material.dart';

class FabScreen extends StatefulWidget {
  const FabScreen({super.key});

  @override
  State<FabScreen> createState() => _FabScreenState();
}

class _FabScreenState extends State<FabScreen> with SingleTickerProviderStateMixin {
  bool _isFabMenuOpen = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  void _toggleFabMenu() {
    setState(() {
      _isFabMenuOpen = !_isFabMenuOpen;
      _isFabMenuOpen ? _animationController.forward() : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 2 - FAB')),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Center(child: Text("Exercício 2 - FAB")),
          if (_isFabMenuOpen) _buildFabMenu(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleFabMenu,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildFabMenu() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFabOption(Icons.message, "Mensagem"),
          const SizedBox(height: 10),
          _buildFabOption(Icons.mail, "E-mail"),
          const SizedBox(height: 10),
          _buildFabOption(Icons.phone, "Telefone"),
        ],
      ),
    );
  }

  Widget _buildFabOption(IconData icon, String label) {
    return FloatingActionButton(
      mini: true,
      heroTag: label,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selecionado: $label')),
        );
        _toggleFabMenu();
      },
      child: Icon(icon),
    );
  }
}
