// void main() async {
//   var scores = [];
//   scores.add(70);
//   scores.add(80);
//   scores.add(90);
//   scores.add(100);

//   //print(scores); -> menampilkan seluruh list
//   print(scores[2]); //mengambil data menggunakan index
// }

void main() async {
  var scores = [80, 90, 100];
  print(scores);

  for (var score in scores) {
    //memanggil seluruh data pada list beruntun kebawah
    print(score); //memanggil seluruh data pada list beruntun kebawah
  }
}
