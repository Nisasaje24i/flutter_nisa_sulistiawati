import 'class_bangunRuang.dart';

void main() {
  var kubus = Kubus(3);
  print('Volume Kubus adalah : ${kubus.volume()}');

  var balok = Balok(9, 5, 6);
  print('Volume Balok adalah : ${balok.volume()}');
}
