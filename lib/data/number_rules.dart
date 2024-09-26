class NumberRules {
  static bool isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  static bool isFibonacci(int number) {
    int a = 0, b = 1;
    while (b < number) {
      final temp = b;
      b = a + b;
      a = temp;
    }
    return b == number || number == 0;
  }
}
