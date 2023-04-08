Future<List<int>> paramList(List<int> listData, int pengali) async {
  List<int> hasilListBaru = [];
  for (int nilai in listData) {
    hasilListBaru.add(nilai * pengali);
    await Future.delayed(Duration(seconds: 1));
  }
  return hasilListBaru;
}

void main(List<String> args) async {
  List<int> listData = [7, 8, 9, 10];
  int pengali = 3;
  List<int> hasilList = await paramList(listData, pengali);
  print(hasilList);
}
