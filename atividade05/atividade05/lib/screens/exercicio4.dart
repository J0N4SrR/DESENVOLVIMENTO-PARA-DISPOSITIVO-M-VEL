import 'package:flutter/material.dart';

class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});

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

    final Widget blocoTextoEBotoes = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Exercicio 4 - aplicando responsividade ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ElevatedButton(onPressed: null, child: Text('Botão 1')),
              SizedBox(width: 16),
              ElevatedButton(onPressed: null, child: Text('Botão 2')),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Abaixo estão imagens carregadas dinamicamente e fixas.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

    final Widget blocoImagens = SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 04 - Layout Responsivo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Layout horizontal (tablet/paisagem)
            return Row(
              children: [
                Expanded(flex: 1, child: blocoTextoEBotoes),
                Expanded(flex: 2, child: blocoImagens),
              ],
            );
          } else {
            // Layout vertical (celular/retrato)
            return Column(
              children: [
                blocoTextoEBotoes,
                Expanded(child: blocoImagens),
              ],
            );
          }
        },
      ),
    );
  }
}
