import 'dart:io';

void main() {
  var nilai;

  print('Masukan nilai :');
  nilai = int.parse(stdin.readLineSync()!);

  if (nilai > 70) {
    print('Nilai A');
  } else if (nilai > 40 && nilai < 70) {
    print('Nilai B');
  } else if (nilai > 0 && nilai < 40) {
    print('Nilai C');
  } else {
    print('Nilai kosong');
  }
}
