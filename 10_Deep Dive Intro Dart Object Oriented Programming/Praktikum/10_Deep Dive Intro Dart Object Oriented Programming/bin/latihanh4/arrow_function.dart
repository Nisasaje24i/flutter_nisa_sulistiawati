void main() {
//   String result =
//   mahasiswa('Universitas indonesia', getFullName('Andi', 'Yunanda'));
//   print(result);
// }

// void getFullName(String first, String last) => '$first $last';

// String mahasiswa(String universityName, Function getFullNameFunc) {
//   var dataMahasiswa = '$getFullNameFunc from $universityName';
//   return dataMahasiswa;
  perfomAction(myFunction);
}

void myFunction(int number) {
  print('The number is $number');
}

void perfomAction(Function action) {
  action(42);
}
