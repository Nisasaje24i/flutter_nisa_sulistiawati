class Matematika {
  double hasil() {
    return 0;
  }
}

class Fpb implements Matematika {
  double x;
  double y;
  Fpb(this.x, this.y);

  @override
  double hasil() {
    while (y != 0.0) {
      double z = x % y;
      x = y;
      y = z;
    }
    return x;
  }
}

class Kpk implements Matematika {
  double x;
  double y;
  Kpk(this.x, this.y);
  kpk1() {
    while (y != 0.0) {
      double z = x % y;
      x = y;
      y = z;
    }
    return x;
  }

  @override
  double hasil() {
    var hitungKpk = (x * y) ~/ kpk1();
    return hitungKpk.toDouble();
  }
}
