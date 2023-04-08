void main() {
  // returnType functionName(param1, param2) {
  //   return result;
  String string = getString();
  print(string);
  greet('Andri', 2000);
}

String getString() {
  var stringFromJson = 'Hello';
  return stringFromJson;
}

void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Hallo $name, tahun ini anda berusia $age');
}
