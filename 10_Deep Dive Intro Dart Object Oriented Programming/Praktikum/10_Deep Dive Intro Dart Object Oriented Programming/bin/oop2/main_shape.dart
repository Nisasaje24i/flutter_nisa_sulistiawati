import 'class_shape.dart';

void main() {
  Circle c = Circle(7);
  Square s = Square(7);
  Rectangle r = Rectangle(7, 7);

  print('Luas Lingkaran : ${c.getArea()}');
  print('Keliling Lingkaran : ${c.getPerimeter()}');
  print('Luas Persegi : ${s.getArea()}');
  print('Keliling Persegi : ${s.getPerimeter()}');
  print('Luas Persegi Panjang : ${r.getArea()}');
  print('Keliling Persegi Panjang : ${r.getPerimeter()}');
}