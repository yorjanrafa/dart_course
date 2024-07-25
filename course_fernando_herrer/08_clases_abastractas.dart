void main() {
  // abstract class of bicycle
}

enum bicycleType { road, mountain, electric }

abstract class Bicycle {
  String color;
  double price;
  bicycleType type;

  Bicycle({
    required this.type,
    required this.color,
    required this.price,
  });

  void topSpeed(double speed);
}
