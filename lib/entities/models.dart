/*String nombre;
Float precio;

List<String> nombres;
List<Float> precios;
Poco efectivo, dificil de organizar*/

//Clases:

class Product {
  //Atributos:
  String name;
  double price;
  String description;
  int quantity;

  Product({required this.name,  required this.price, required this.description, required this.quantity});

  double totalPrice() {
    return price * quantity;
  }

}

