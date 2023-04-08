// void main() {
//   print('Before the future');
//   final myFuture = Future<int>.delayed(Duration(seconds: 2), () => 42)
//       .then((value) => print('Value : $value'))
//       .catchError((error) => print('Error : $error'))
//       .whenComplete(() => print('Future is complete'));
//   print('After the future');
// }

void main() async {
  print('Before the future');
  try {
    final value = await Future<int>.delayed(Duration(seconds: 2), () => 42);
    print('Value : $value');
  } catch (e) {
    print(e);
  } finally {
    print('Future is complete');
    print('After the future');
  }
}
