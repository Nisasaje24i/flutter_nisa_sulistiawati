void main() {
  try {
    var a = 8;
    var b = 0;
    var pembagian = a ~/ b;
    print(pembagian);
  } on Exception {
    print('Can not divide by zero');
  }
}
