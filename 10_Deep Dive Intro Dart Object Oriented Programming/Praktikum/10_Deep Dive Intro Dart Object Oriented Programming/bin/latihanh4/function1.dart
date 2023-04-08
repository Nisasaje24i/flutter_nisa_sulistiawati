void main() {
  print(compliment(14));
  helloPersonAndPet('Nisa', 'Cathy');
  String result = fullName('Nisa', 'Sulistiawati', 'S.Kom');
  print(result);
  bool isInTolerance = withinTolerance(5);
  print(isInTolerance);
}

String compliment(int number) {
  return '$number is a very nice number';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return ' $first $last $title';
  } else {
    return '$first $last';
  }
}

bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}
