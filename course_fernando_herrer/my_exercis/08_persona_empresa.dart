void main() {
  Empleado e1 = Empleado(
    nombre: 'Fernando',
    edad: 20,
    empresa: 'Fernando Herrer',
  );
  e1.saludar();
  e1.trabajar();
}

abstract class Persona {
  String nombre;
  int edad;

  Persona({required this.nombre, required this.edad});

  void saludar() {
    print('Hola, soy $nombre y tengo $edad años');
  }
}

class Empleado extends Persona {
  String empresa;

  Empleado({
    required String nombre,
    required int edad,
    required this.empresa,
  }) : super(nombre: nombre, edad: edad);

  void trabajar() {
    print('Estoy trabajando en $empresa');
  }
}
