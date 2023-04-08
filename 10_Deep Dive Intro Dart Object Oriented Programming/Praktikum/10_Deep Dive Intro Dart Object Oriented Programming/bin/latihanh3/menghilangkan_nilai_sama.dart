void main() {
  List<String> namaMahasiswa = [
    'nisa',
    'fitri',
    'salsa',
    'nisa',
    'nahda',
    'furi'
  ];
  List<String> unikNama = namaMahasiswa.toSet().toList();
  print(unikNama);
}
