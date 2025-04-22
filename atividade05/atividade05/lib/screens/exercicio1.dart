import 'package:flutter/material.dart';

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista com imagens da internet (aleatórias)
    final randomImages = List.generate(
      2,
      (index) => Image.network('https://picsum.photos/200?random=$index'),
    );

    final fixedImages = [
      Image.asset('lib/screens/img/img1.jpg'),
      Image.asset('lib/screens/img/img2.jpg'),      
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 01: Utilizando GridView')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Imagens geradas aleatoriamente:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: randomImages,
              ),
              const SizedBox(height: 16),
              const Text(
                'Imagens Fixas:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: fixedImages,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
