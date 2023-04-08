import 'class_matematika.dart';

void main() {
  Fpb fpb = Fpb(30, 40);
  Kpk kpk = Kpk(30, 40);
  print('Faktor Persekutuan Terbesar ${fpb.x} dan ${fpb.y} adalah : ');
  print(fpb.hasil());
  print('Kelipatan Persekutuan Terkecil ${kpk.x} dan ${kpk.y} adalah :');
  print(kpk.hasil());
}
