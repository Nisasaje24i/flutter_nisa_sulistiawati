void main(List<String> args) {
  List<List<String>> listData = [
    ['aku', 'apel'],
    ['kamu', 'mangga']
  ];

  Map<String, String> mapData = Map.fromIterable(listData,
      key: (item) => item[0], value: (item) => item[1]);

  print(listData);
  print(mapData);
}
