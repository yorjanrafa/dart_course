void main() {
  print("empieza");

  final value = await httpGet("https://hola.com/home");
  print(value);

  print("termina");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return "http response (404 NOT FOUND)";
}
