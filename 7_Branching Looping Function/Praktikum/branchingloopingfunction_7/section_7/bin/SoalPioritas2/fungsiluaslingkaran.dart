// int luaslingkaran(int r){
//   return r *r;
// }
// void main(){
//   const phi = 3.14;
//   var hasil = phi * luaslingkaran(7);
//   print (hasil);
// }

import 'dart:io';
import 'dart:math';
double luasLingkaran(double r){
  return pi * r * r;
}
void main(List<String> arguments){
  stdout.write('Input jari - jari :');
  double r = double.parse(stdin.readLineSync()!);

  double luas = luasLingkaran(r);

  stdout.write('Luas lingkaran : $luas');
}