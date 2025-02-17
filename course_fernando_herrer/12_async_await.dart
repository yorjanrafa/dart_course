void main() async {
  print("empieza");

  try {
    final response = await httpGet("https://hola.com/home");
    print(response);
  } catch (error) {
    print('ha ocurrido un error: $error');
  }

  print("termina");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception("404 NOT FOUND");
  // return "http response (404 NOT FOUND)";
}
