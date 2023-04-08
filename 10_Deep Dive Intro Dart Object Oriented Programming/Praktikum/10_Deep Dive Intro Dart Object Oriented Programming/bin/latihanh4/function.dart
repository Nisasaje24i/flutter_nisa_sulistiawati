void main() {
  String myJuice = juiceMakerMachine('Apple');
  print(myJuice);

  String? fruit;

  //ONE PLACE
  if (fruit == 'Banana') {
    peelBanana();
    setBanana();
  }
  //OTHER PLACE
  if (fruit == 'Banana') {
    peelBanana();
    setBanana();
  }
  //SOME OTHER PLACE
  if (fruit == 'Banana') {
    peelBanana();
    setBanana();
  }
}

String juiceMakerMachine(String fruitName) {
  String result = 'Your $fruitName jus already';
  return result;
}

peelBanana() {}

setBanana() {}
