void main() {
  int nilai = 24;
  print("Input bilangan = $nilai ");

  for (int i = 1; i <= nilai; i++) {
    if (nilai % i == 0) {
      print("Faktor nya adalah = $i");
    }
  }
}
