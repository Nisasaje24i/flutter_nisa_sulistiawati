import 'dart:io';
void main() {
  int bilangan;
  List prima = [];

  print('Masukan bilangan :');
  bilangan = int.parse(stdin.readLineSync()!);

  for (int i = 1; i<=100; i++) {
    if (bilangan % i == 0) {
      prima.add(i);
    }
  }
  if (prima.length > 2) {
    print('Bilangan ini bukan bilangan prima');
  } else {
    print('Bilangan ini bilangan prima');
  }
}
