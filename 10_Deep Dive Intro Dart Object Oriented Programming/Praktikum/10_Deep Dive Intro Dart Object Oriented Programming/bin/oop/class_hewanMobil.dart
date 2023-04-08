class Hewan {
  double beratBadan;

  Hewan(this.beratBadan);
}

class Mobil {
  List<Hewan> muatanHewan = [];
  int kapasitas;

  Mobil(this.kapasitas);

  String tambahMuatan(Hewan animal) {
    if (muatanHewan.length < kapasitas) {
      muatanHewan.add(animal);

      return 'Kapasitas masih tersedia, silahkan masuk!';
    } else {
      return 'Kapasitas sudah penuh!';
    }
  }

  int totalMuatan() {
    return muatanHewan.length;
  }
}
