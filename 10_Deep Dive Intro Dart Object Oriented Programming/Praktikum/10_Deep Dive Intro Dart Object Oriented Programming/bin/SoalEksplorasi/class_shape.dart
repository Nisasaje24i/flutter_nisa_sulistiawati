import 'dart:math';

abstract class Shape {
  int getArea();
  int getPerimeter();
}

class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  int getArea() {
    return pi * radius * radius ~/ 1;
  }

  @override
  int getPerimeter() {
    return 2 * pi * radius ~/ 1;
  }
}

class Square implements Shape {
  int side;

  Square(this.side);

  @override
  int getArea() {
    return side * side;
  }

  @override
  int getPerimeter() {
    return 4 * side;
  }
}

class Rectangle implements Shape {
  int width;
  int height;

  Rectangle(this.width, this.height);

  @override
  int getArea() {
    return height * width;
  }

  @override
  int getPerimeter() {
    return 2 * (height * width);
  }
}
