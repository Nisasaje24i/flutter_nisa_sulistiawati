import 'dart:io';

class BangunRuang {
  double? panjang;
  double? lebar;
  double? tinggi;

  BangunRuang() {
    panjang = 0;
    lebar = 0;
    tinggi = 0;
  }

  double volume() {
    return panjang! * lebar! * tinggi!;
  }
}

class Kubus extends BangunRuang {
  @override
  Kubus(double sisi) {
    panjang = sisi;
    lebar = sisi;
    tinggi = sisi;
  }
}

class Balok extends BangunRuang {
  @override
  Balok(double pBalok, double tBalok, double lBalok) {
    panjang = pBalok;
    lebar = lBalok;
    tinggi = tBalok;
  }
}
