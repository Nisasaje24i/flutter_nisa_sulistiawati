void main(List<String> args) {
  List<double> listNilai = [65.5, 75.5, 88, 90, 100];

  double jumlahNilai = 0;

  for (double n in listNilai) {
    jumlahNilai += n;
  }
  double rata = jumlahNilai / listNilai.length;
  print(rata);

  int rataBulat = rata.ceil();
  print(rataBulat);
}
