Future<String> P1() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'HELLO';
  });
}

void main() async {
  var data = await P1();
  print(data);
}
