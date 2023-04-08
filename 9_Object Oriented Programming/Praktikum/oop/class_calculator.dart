import 'dart:io';

class Calculator {
  void penjumlahan() {
    double nilaiA;
    double nilaiB;

    print('==================================');
    print('===== Ini adalah penjumlahan =====');
    print('==================================');
    print('Masukan Nilai 1:');
    nilaiA = double.parse(stdin.readLineSync()!);
    print('Masukan Nilai 2:');
    nilaiB = double.parse(stdin.readLineSync()!);
    double hasil = nilaiA + nilaiB;
    print('Hasil penjumlahan = $hasil');
    print('==================================');
  }

  void pengurangan() {
    double nilaiA;
    double nilaiB;

    print('===== Ini adalah pengurangan =====');
    print('==================================');
    print('Masukan Nilai 1:');
    nilaiA = double.parse(stdin.readLineSync()!);
    print('Masukan Nilai 2:');
    nilaiB = double.parse(stdin.readLineSync()!);
    double hasil = nilaiA - nilaiB;
    print('Hasil pengurangan = $hasil');
    print('==================================');
  }

  void perkalian() {
    double nilaiA;
    double nilaiB;

    print('=====  Ini adalah perkalian  =====');
    print('==================================');
    print('Masukan Nilai 1:');
    nilaiA = double.parse(stdin.readLineSync()!);
    print('Masukan Nilai 2:');
    nilaiB = double.parse(stdin.readLineSync()!);
    double hasil = nilaiA * nilaiB;
    print('Hasil perkalian = $hasil');
    print('==================================');
  }

  void pembagian() {
    double nilaiA;
    double nilaiB;

    print('=====  Ini adalah pembagian  =====');
    print('==================================');
    print('Masukan Nilai 1:');
    nilaiA = double.parse(stdin.readLineSync()!);
    print('Masukan Nilai 2:');
    nilaiB = double.parse(stdin.readLineSync()!);
    double hasil = nilaiA / nilaiB;
    print('Hasil pembagian = $hasil');
    print('==================================');
  }
}

void main() {
  var calcu = Calculator();
  int noMenu;

  print('=========== CALCULATOR ==============');
  print('1. Penjumlahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');
  print('=====================================');
  for (int i = 0; i <= 10; i++) {
    print('Pilih Menu:');
    noMenu = int.parse(stdin.readLineSync()!);
    if (noMenu == 1) {
      calcu.penjumlahan();
    } else if (noMenu == 2) {
      calcu.pengurangan();
    } else if (noMenu == 3) {
      calcu.perkalian();
    } else if (noMenu == 4) {
      calcu.pembagian();
    } else {
      print('Menu Tidak Tersedia, Silahkan Pilih Ulang!');
    }
  }
}
