
/*Escreva um programa em Dart para criar uma classe Laptop com as
propriedades [id, nome, ram] e crie 3 objetos dela, imprimindo todos os
detalhes.*/
class Laptop{

  int id;
  String nome;
  int ram;

   Laptop(this.id, this.nome, this.ram);

   void mostrarInfo(){
    print(
      "\n ID: $id \n Nome: $nome \n RAM: $ram \n"
    );
   }

}