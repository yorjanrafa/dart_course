import 'dart:math';

void main() {
  final listaNumeros = ["a", "b", "c", "d", "e"];

  final random = Random();

  final numeroRandom = listaNumeros[random.nextInt(listaNumeros.length)];

  print('Número random: $numeroRandom');
}
