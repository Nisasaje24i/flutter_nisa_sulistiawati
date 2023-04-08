// void main() {
//   var student = {};
//   student['name'] = 'Alex Under';
//   student['age'] = 18;
//   print(student); //menampilkan data kepinggir

//   print(student['name']); // menampilkan data kebawah
//   print(student['age']);
// }

void main() {
  var studeny = {
    'name': 'alex',
    'age': '16',
  };
  print(studeny);

  for (var key in studeny.keys) {
    print(studeny[key]);
  }
}
