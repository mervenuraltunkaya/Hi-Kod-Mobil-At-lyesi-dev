void main() {
  int sonuc = carp(5, 3);
  print(sonuc);
}

int carp(int a, int b) {
  int multiplyByTwo(int x) {
    return x * 2;
  }

  int result = a;

  for (int i = 1; i <= b - 1; i++) {
    result = multiplyByTwo(result);
  }
  return result;
}
