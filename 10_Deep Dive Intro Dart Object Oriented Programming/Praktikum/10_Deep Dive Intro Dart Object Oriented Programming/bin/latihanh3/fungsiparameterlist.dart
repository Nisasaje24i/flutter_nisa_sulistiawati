Future<List<int>> paramList(List<int> listData, int pengali) async {
  List<int> hasillistbaru = [];
  for (int i = 0; i < listData.length; i++) {
    int hasil = await Future.value(listData[i] * pengali);
    hasillistbaru.add(hasil);
  }
  return hasillistbaru;
}

void main(List<String> args) {
  paramList([7, 8, 9, 10], 5);
}
