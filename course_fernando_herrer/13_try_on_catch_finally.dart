void main() async {
  print("empieza");

  try {
    final response = await httpGet("https://hola.com/home");
    print(response);
  } on Exception catch (error) {
    print("tenemos una excepcion $error");
  } catch (error) {
    print('ha ocurrido un error: $error');
  } finally {
    print("termina el try/catch");
  }

  print("termina");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  // throw Exception("Falta un parametro para la url");
  throw Exception("404 NOT FOUND"); // "404 NOT FOUND";
  // return "http response (404 NOT FOUND)";
}
