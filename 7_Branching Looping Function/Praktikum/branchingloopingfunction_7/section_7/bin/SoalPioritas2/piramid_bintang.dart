import 'dart:io';
void main() {
  int tinggi;
  int i, j, k;

  print('Masukan tinggi segitiga:');
  tinggi = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= tinggi; i++) {
    for (j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    for (k = 1; k <= i; k++) {
      stdout.write('* ');
    }
    stdout.write('\n');
  }

}