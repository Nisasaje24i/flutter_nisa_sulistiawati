void main() {
  List<String> namaMahasiswa = [
    'nisa',
    'fitri',
    'salsa',
    'nisa',
    'nahda',
    'furi'
  ];
  List<String> hilangNama = namaMahasiswa.toSet().toList();
  print(hilangNama);
}
