// void main() {
//    var lst = new List(5);
//    lst[0] = 5;
//    lst[1] = 9;
//    lst[2] = 1;
//    lst[3] = 15;
//    lst[4] = 7;
//    print(lst);
// }
void main(List<String> args) {
  // var list = [['aku','apel'], ['kamu','mangga']];
  // print(list);

  List<List<String>> listData = [
    ['aku', 'apel'],
    ['kamu', 'mangga']
  ];

  Map<String, String> mapData = Map.fromIterable(listData,
      key: (item) => item[0], value: (item) => item[1]);

  print(listData);
  print(mapData);
}
