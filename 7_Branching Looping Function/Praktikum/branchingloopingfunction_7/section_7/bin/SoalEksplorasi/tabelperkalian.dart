import 'dart:io';

void main() {
  int i, j;
  for (i = 1; i <= 9; i++) {
    for (j = 1; j <= 9; j++) {
      int p = i * j;
      stdout.write('$p ');
      stdout.write('\t');
    }
    print(' ');
  }
}
