// void p1() {
//   Future.delayed(Duration(seconds: 1), () {
//     print('Hello world');
//   });
// }

// void p2() {
//   print('Hai');
// }

// void main() {
//   p1();
//   p2();
// }

Future<void> p1() async {
  await Future.delayed(Duration(seconds: 1), () {
    print('ini p1');
  });
}

void p2() {
  print('ini p2');
}

Future<void> p3() async {
  await Future.delayed(Duration(seconds: 3), () {
    print('ini p3');
  });
}

void main() async {
  await p1();
  p2();
  await p3();
}
