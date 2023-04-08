void main() {
  print(youAreWonderfull(name: 'Alma', numberPeople: 30));
}

String youAreWonderfull({required String name, int numberPeople = 30}) {
  return '$name You are wonderfull. Kamu luar biasa Andi, $numberPeople orang lain berpikir begitu.';
}
