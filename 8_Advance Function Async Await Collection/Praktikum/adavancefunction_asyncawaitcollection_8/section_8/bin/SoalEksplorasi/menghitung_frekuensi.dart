void main() {
  List<String> namaMahasiswa = [
    'nisa',
    'fitri',
    'salsa',
    'nisa',
    'nisa',
    'nahda',
    'nahda',
    'furi'
  ];
  Map<String, int> frekuensiNama = {};
  for (var n = 0; n < namaMahasiswa.length; n++) {
    if (frekuensiNama.containsKey(namaMahasiswa[n])) {
      frekuensiNama[namaMahasiswa[n]] = frekuensiNama[namaMahasiswa[n]]! + 1;
    } else {
      frekuensiNama[namaMahasiswa[n]] = 1;
    }
  }
  print(frekuensiNama);
}
