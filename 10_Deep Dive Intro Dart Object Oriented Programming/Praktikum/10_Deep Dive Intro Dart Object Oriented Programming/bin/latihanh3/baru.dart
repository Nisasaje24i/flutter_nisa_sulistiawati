void main(List<String> args) {
  List<double> listNilai = [65.5, 70, 80, 90, 100];

  double totalNilai = 0;

  for (double n in listNilai) {
    totalNilai += n;
  }
  double rata = totalNilai / listNilai.length;
  print(rata);

  int rataBulat = rata.ceil();
  print(rataBulat);
}
