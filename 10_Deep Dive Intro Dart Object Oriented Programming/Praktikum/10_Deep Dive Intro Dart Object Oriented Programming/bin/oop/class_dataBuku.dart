class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class Sistem {
  List<Buku> daftarBuku = [];

  void tambahBuku(Buku addBuku) {
    daftarBuku.add(addBuku);
  }

  void hapusBuku(int hapus) {
    daftarBuku.removeAt(hapus);
  }

  void dataBuku() {
    for (int i = 0; i <= daftarBuku.length; i++) {
      print(
          '${daftarBuku[i].id} -- ${daftarBuku[i].judul} -- ${daftarBuku[i].penerbit} -- ${daftarBuku[i].harga} -- ${daftarBuku[i].kategori}');
    }
  }
}
