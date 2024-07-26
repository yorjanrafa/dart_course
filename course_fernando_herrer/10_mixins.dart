void main() {
  final perro = Perro();
  perro.accion();
  perro.categoria();
  perro.saluda();
  perro.caminar();
  print("---------------------");

  final pato = Pato();
  pato.accion();
  pato.saluda();

  pato.ave();
  pato.caminar();
  pato.nadar();
  print("---------------------");
}

mixin Animal {
  void saluda() {
    print("soy un animal");
  }
}

mixin Mamifero {
  void categoria() {
    print("soy un mamifero");
  }
}

mixin Ave {
  void ave() {
    print("soy Ave");
  }
}

mixin Nadar {
  void nadar() {
    print("soy nadador");
  }
}

mixin Caminar {
  void caminar() {
    print("soy caminante");
  }
}

class Perro with Animal, Mamifero, Nadar, Caminar {
  void accion() {
    print("yo ladro, guau guau");
  }
}

class Pato with Animal, Ave, Nadar, Caminar {
  void accion() {
    print("yo hago cuak cuak");
  }
}
