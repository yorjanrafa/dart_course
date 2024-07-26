void main() {
  print("empieza");

  httpGet("https://hola.com/home").then((value) {
    print(value);
  });

  print("termina");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return "http response (404 NOT FOUND)";
  });
}
