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

  String programRequired(Pc pc) {
    if (pc.cpu <= 2.5) {
      return "XX Esta pc no cumple los requerimientos XX ";
    }
    return "Esta pc cumple los requerimientos";
  }

  print("${programRequired(l1)}");

  print("---------------------");
  print("---------------------");
  print("---------------------");

  Program photoshop = Program(
    programName: "Photoshop",
    ramRequired: 8,
    cpuRequired: 2.5,
  );
  photoshop.checkSpecs(d1);
  photoshop.checkSpecs(l1);
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

class Program {
  String programName;
  int ramRequired;
  double cpuRequired;

  Program({
    required this.programName,
    required this.ramRequired,
    required this.cpuRequired,
  });

  void checkSpecs(Pc pc) {
    if (pc.cpu <= cpuRequired && pc.ram >= ramRequired) {
      print("XX Esta pc no cumple los requerimientos para $programName XX");
    } else {
      print(" Esta pc cumple los requerimientos para $programName");
    }
  }
}
