
import 'Laptop.dart';
import 'House.dart';
import 'Cat.dart';
import 'Camera.dart';


void main() {
  print("\n----------Exercicios 01-----------\n");
  Laptop L1 = Laptop(1, "Dell XPS 15", 16);
  Laptop L2 = Laptop(2, "Lenovo ThinkPad", 32);
  Laptop L3 = Laptop(3, "Dell XPS 15", 8);
  L1.mostrarInfo();
  L2.mostrarInfo();
  L3.mostrarInfo();
 
  print("\n\n\n----------Exercicios 02-----------\n");
  House c1 = House(1, "Casa", 350000.00);
  House c2 = House(2, "Apartamento", 500000.00);
  House c3 = House(3, "Chácara", 750000.00);

  List<House> listaHouse = [c1,c2,c3];

  for (House c in listaHouse) {
    c.mostrarInfo();
  }

  print("\n\n\n----------Exercicios 03-----------\n");
  
  Cat gato = Cat(1, "Perola", "Cinza/Branca", "Miau");
  gato.mostrarInfo();

  print("\n\n\n----------Exercicios 04-----------\n");
  Camera camera1 = Camera(1, "Canon", "Preta", 2500.00);
  Camera camera2 = Camera(2, "Nikon", "Prata", 3200.00);
  Camera camera3 = Camera(3, "Sony", "Vermelha", 2800.00);
  camera1.mostrarInfo();
  camera2.mostrarInfo();
  camera3.mostrarInfo();




} 