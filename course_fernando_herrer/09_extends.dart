void main() {
  // abstract class of bicycle

  final roadBicycle = RoadBicycle(cuantityLeft: 9);
  print(roadBicycle);
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
    required double cuantity,
  });

  void topSpeed(double speed);
}

class RoadBicycle extends Bicycle {
  RoadBicycle({required double cuantityLeft})
      : super(
          cuantity: cuantityLeft,
          type: bicycleType.road,
          color: 'red',
          price: 100,
        );

  @override
  void topSpeed(double speed) {
    speed *= 1.2;
  }
}
