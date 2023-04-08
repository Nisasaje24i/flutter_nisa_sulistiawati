class Password {
  String value;

  Password(this.value);
  @override
  String toString() => value;

  String isValid() {
    if (value.length >= 8) {
      return 'true';
    } else {
      return 'false';
    }
  }
}

void main() {
  var p = Password('Nisa Sulistiawati');
  print(p);
  print(p.isValid());
}
