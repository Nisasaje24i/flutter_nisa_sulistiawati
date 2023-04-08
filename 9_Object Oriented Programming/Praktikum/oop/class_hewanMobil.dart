class Hewan {
  double beratBadan;

  Hewan(this.beratBadan);
}

class Mobil {
  int kapasitas;
  List<Hewan> hewan = [];

  Mobil(this.kapasitas);

  void tambahHewan(Hewan animal) {
    if (berat_muatanHewan() + animal.beratBadan <= kapasitas) {
      hewan.add(animal);
      print(
          'Hewan berhasil ditambahkan. Berat muatan sekarang di dalam mobil adalah : ${berat_muatanHewan()}');
    } else {
      print(
          'Maaf tidak dapat menambah hewan lagi. Kapasitas muatan mobil sudah penuh.');
    }
  }

  double berat_muatanHewan() {
    double berat = 0;
    for (Hewan hwn in hewan) {
      berat += hwn.beratBadan;
    }
    return berat;
  }
}

void main() {
  Hewan addHewan1 = new Hewan(150.5);
  Hewan addHewan2 = new Hewan(100.2);
  Hewan addHewan3 = new Hewan(300.2);
  Hewan addHewan4 = new Hewan(300.4);

  Mobil mobil = new Mobil(800);
  mobil.tambahHewan(addHewan1);
  mobil.tambahHewan(addHewan2);
  mobil.tambahHewan(addHewan3);
  mobil..tambahHewan(addHewan4);
}
