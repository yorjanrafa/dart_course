  void main () {
    final int n1 = 10;
    final int n2 = 20;
    late final int result;
    result = sumTwoNumbers(n1, n2);
    print("$result");
  }


  sumTwoNumbers(int n1, int n2) {
    return n1 + n2;
  }