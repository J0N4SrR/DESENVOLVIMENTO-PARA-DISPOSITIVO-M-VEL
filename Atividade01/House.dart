/*Escreva um programa em Dart para criar uma classe House com as
propriedades [id, nome, preço]. Crie um construtor para ela e crie 3 objetos.
Adicione-os a uma lista e imprima todos os detalhes.*/

class House{
  int id;
  String nome;
  double preco;

  House(this.id,this.nome,this.preco);

  void mostrarInfo(){
    print(
      "ID: $id \n Nome: $nome \n Preço: $preco"
    );
   }

   
}