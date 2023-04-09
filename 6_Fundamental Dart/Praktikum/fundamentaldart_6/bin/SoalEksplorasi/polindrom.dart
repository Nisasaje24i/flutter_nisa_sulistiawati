void main() {
  String kalimat = 'kursi goyang';
  String kalimat_dibalik = kalimat.split("").reversed.join();

  //Ini polindrome
  print("Input Kata = $kalimat");
  print("Output Kata = $kalimat_dibalik");

  if (kalimat == kalimat_dibalik) {
    print("Polindrome");
  } else {
    print("Bukan polindrome");
  }

  //ini bukan polindrome
  String kalimat1 = 'kasur rusak';
  String kalimat_dibalik1 = kalimat1.split("").reversed.join();
  print("Input Kata = $kalimat1");
  print("Output Kata = $kalimat_dibalik1");

  if (kalimat1 == kalimat_dibalik1) {
    print("Polindrome");
  } else {
    print("Bukan polindrome");
  }
}
