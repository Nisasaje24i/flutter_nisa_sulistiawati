Future<int> menghitungFaktorial(int nilai) async {
  int faktorial = 1;
  for (int i = 1; i <= nilai; i++) {
    faktorial *= i;
    await Future.delayed(Duration(seconds: 1));
  }
  return faktorial;
}

void main(List<String> args) async {
  int nilai = 15;
  int hasilFaktorial = await menghitungFaktorial(nilai);
  print(hasilFaktorial);
}
