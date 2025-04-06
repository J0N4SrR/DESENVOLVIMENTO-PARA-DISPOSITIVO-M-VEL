/* Escreva um programa em Dart para criar uma classe Camera com
propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter
para acessar e modificar os valores. Além disso, crie 3 objetos dela e
imprima todos os detalhes.*/

class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;
  
  Camera(this._id, this._marca, this._cor, this._preco);

  int get getId{
    return _id;
  }
  set setId(int id){
    this._id = id; 
  }
   String get getMarca {
    return _marca;
  }
  set setMarca(String marca) {
    this._marca = marca;
  }
  String get getCor {
    return _cor;
  }
  set setCor(String cor) {
    this._cor = cor;
  }
  double get getPreco {
    return _preco;
  }
  set setPreco(double preco) {
    this._preco = preco;
  }

  void mostrarInfo() {
    print("ID: $_id, Marca: $_marca, Cor: $_cor, Preço: $_preco");
  }

  }