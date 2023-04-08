import 'class_dataBuku.dart';

void main(List<String> args) {
  var buku1 = Buku(112, 'My Ice Girl', 'Nisa', 76.900, 'Romance');
  var buku2 = Buku(113, 'My Ice Boy', 'Nisa', 76.900, 'Romance');
  var buku3 = Buku(114, 'Harry Potter', 'JK. Rowling', 150.000, 'Fantasi');
  var buku4 = Buku(115, 'Fantastic Beats', 'JK. Rowling', 90.000, 'Fantasi');

  var sistem = Sistem();

  sistem.tambahBuku(buku1);
  sistem.tambahBuku(buku2);
  sistem.tambahBuku(buku3);
  sistem.tambahBuku(buku4);
  sistem.hapusBuku(0);
  sistem.dataBuku();
}
