void main () {
  final int n1 = 10;
  final int n2 = 20;
  late final int result;
  result = sumTwoNumbers(n1, n2);
  print("$result");

  late final String name;
  name = "yorjan";
  final String greeting = helloPerson(name);
  print("$greeting");


  late final int result2;
  result2 = multiplyTwoNumbers(n1, n2);
  print("$result2");


  late final String greeting2;
  greeting2 = greetPerson(name: name, greet: "saludos");
  print("$greeting2");
}


int sumTwoNumbers(int n1, int n2) {
  return n1 + n2;
}

String helloPerson(String name) {
  return "Hello $name";
}

int multiplyTwoNumbers(int n1, int n2) => n1 * n2;


String greetPerson({required String name, String greet = "Hello"}){
  return "$greet $name";

}