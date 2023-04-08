// var hello = () {
//   print('Hello');
// };
// var jumlah = (int a, int b) {
//   return a + b;
// };
// void main() {
//   hello();
//   print(jumlah(1, 2));
// }

void main() {
  // var withinTolerance = () {};
  Future.delayed(Duration(seconds: 2), () => print('1'));
  print('2');
  name(String name) {
    return name;
  }
}

Future<String> getString(String name) async {
  var result = '';
  await Future.delayed(
    Duration(seconds: 2),
    () {
      result = '$name you are wonderfull';
    },
  );
  return result;
}
