void main(){
  final batman = new Hero(name: 'Batman', age: 40, power: 'Money');

  print("${batman}");
  print("${batman.name} ${batman.age} ${batman.power}");
}

class Hero {
  String name;
  int age;
  String power;

  Hero(
    { 
      required this.name,
      required this.age,
      required this.power 
    }
  );
  
  // Hero(String pName, int pAge, String pPower)
  //   : name = pName,
  //     age = pAge,
  //     power = pPower; 

  @override
  String toString() {
    return "name: $name, age: $age, power: $power";
  }
  
}