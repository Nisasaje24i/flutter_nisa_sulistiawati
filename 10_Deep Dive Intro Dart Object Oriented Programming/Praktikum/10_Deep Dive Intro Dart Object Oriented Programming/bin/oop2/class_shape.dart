import 'dart:math';

abstract class Shape {
  int getArea();
  int getPerimeter();
}

class Circle implements Shape {
  int r;

  Circle(this.r);

  @override
  int getArea() {
    return pi * r * r ~/ 1;
  }

  @override
  int getPerimeter() {
    return 2 * pi * r ~/ 1;
  }
}

class Square implements Shape {
  int sisi;

  Square(this.sisi);

  @override
  int getArea() {
    return sisi * sisi;
  }

  @override
  int getPerimeter() {
    return 4 * sisi;
  }
}

class Rectangle implements Shape {
  int panjang;
  int lebar;

  Rectangle(this.panjang, this.lebar);

  @override
  int getArea() {
    return panjang * lebar;
  }

  @override
  int getPerimeter() {
    return 2 * (panjang * lebar);
  }
}
