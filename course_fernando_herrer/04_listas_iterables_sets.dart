void main () {
  final List numbers = [1, 2, 2, 1, 3, 3, 4, 4, 8, 8, 5, 2, 3, 4, 5];
  final numberIsPair = numbers.where((number) => number % 2 == 0);
  print("$numberIsPair");
  print("${numberIsPair.toSet()}");
  
  

}