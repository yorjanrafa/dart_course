void main() {
  Desktop d1 = Desktop(cpu: 3.3, ram: 8);
  d1.pcSpecs();
  d1.pcType();

  print("---------------------");
  print("---------------------");
  print("---------------------");

  Laptop l1 = Laptop(cpu: 2.1, ram: 16);
  l1.pcSpecs();
  l1.pcType();
}

abstract class Pc {
  int ram;
  double cpu;

  Pc({required this.ram, required this.cpu});

  void pcSpecs() {
    print("Ram: $ram");
    print("Cpu: $cpu");
  }
}

enum PcType { desktop, laptop }

class Desktop extends Pc {
  PcType type = PcType.desktop;
  Desktop({
    required int ram,
    required double cpu,
  }) : super(ram: ram, cpu: cpu);

  void pcType() {
    print("Type: ${this.type}");
  }
}

class Laptop extends Pc {
  PcType type = PcType.laptop;
  Laptop({
    required int ram,
    required double cpu,
  }) : super(ram: ram, cpu: cpu);

  void pcType() {
    print("Type: $type");
  }
}
