void main() {
  double DineroTotal = 195;
  print("bienvenido");
  print("---------------------");
  print("Total: $DineroTotal");
  print("---------------------");
  print("---------------------\n\n");

  Keyboard k1 = Keyboard(price: 30, stock: 10);
  Monitor m1 = Monitor(price: 50, stock: 5);
  Mouse m2 = Mouse(price: 10, stock: 20);

  SellPart sell = sellPartImpl();
}

// crearemos una venta de partes para un pc
// con stock de cada parte
// la venta resta el stock y suma el dinero total

enum Parts { keyboard, monitor, mouse }

abstract class Part {
  double price;
  int stock;
  Part({required this.price, required this.stock});
}

abstract class SellPart {
  void sell(Part part);
}

class sellPartImpl implements SellPart {
  void sell(Part part) {
    if (part.stock > 0) {
      part.stock -= 1;
    }
    print("Has vendido ${part}");
  }
}

class Keyboard extends Part {
  Parts part = Parts.keyboard;

  Keyboard({required double price, required int stock})
      : super(price: price, stock: stock);
}

class Monitor extends Part {
  Parts part = Parts.monitor;

  Monitor({required double price, required int stock})
      : super(price: price, stock: stock);
}

class Mouse extends Part {
  Parts part = Parts.mouse;

  Mouse({required double price, required int stock})
      : super(price: price, stock: stock);
}
