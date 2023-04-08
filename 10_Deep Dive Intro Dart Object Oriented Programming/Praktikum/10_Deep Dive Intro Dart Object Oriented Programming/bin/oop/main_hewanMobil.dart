import 'class_hewanMobil.dart';

void main(List<String> args) {
  var hewan_add1 = Hewan(350.5);
  var hewan_add2 = Hewan(240.4);
  var hewan_add3 = Hewan(150.5);
  var hewan_add4 = Hewan(175.5);
  var mobil = Mobil(3);

  print(mobil.tambahMuatan(hewan_add1));
  print(mobil.tambahMuatan(hewan_add2));
  print(mobil.tambahMuatan(hewan_add3));
  print(mobil.tambahMuatan(hewan_add4));

  print('Total muatan di dalam : ${mobil.totalMuatan()}');
}
