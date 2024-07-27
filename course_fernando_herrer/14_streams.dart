void main() {
  final streamx = Stream.fromIterable(["a", "b", "c", "d", "e", "f"]);

  streamx.listen((event) {
    print(event);
  });

  emitNumbers().listen((value) {
    print("recibiendo $value");
    print("-------------");
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print("emitiendo $value");
    return value;
  }).take(3);
}
