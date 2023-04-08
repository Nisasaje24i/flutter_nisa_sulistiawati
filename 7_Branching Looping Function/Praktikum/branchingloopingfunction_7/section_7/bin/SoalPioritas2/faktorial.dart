import 'dart:io';

void main() {
  double nilaifaktor = 1;
  int i;
  print("Masukkan bilangan bulat yang akan dihitung : ");
  int? n = int.parse(stdin.readLineSync()!);
  if (n < 0){
    stdout.write("Angka yang dimasukkan bukan bilangan bulat");
  } else {
    for (i = 1; i <= n; i++){
      nilaifaktor *= i;
    }
    stdout.write("Hasil faktorial dari " + n.toString() + "! = " + nilaifaktor.toString());
  }
}