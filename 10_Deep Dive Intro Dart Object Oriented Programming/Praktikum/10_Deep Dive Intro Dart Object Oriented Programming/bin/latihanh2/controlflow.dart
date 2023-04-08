// import 'dart:io';

// void main() {
//   var nilai;

//   print('Masukan nilai :');
//   nilai = int.parse(stdin.readLineSync()!);

//   if (nilai > 70) {
//     print('Nilai A');
//   } else if (nilai > 40 && nilai < 70) {
//     print('Nilai B');
//   } else if (nilai > 0 && nilai < 40) {
//     print('Nilai C');
//   } else {
//     print('Nilai kosong');
//   }
// }

void main() {
  // var isRaining = false;
  // if (isRaining) {
  //   print('Yes, it\s, bring umbrella');
  // }
  // var openHours = 8;
  // var closedHours = 16;
  // var now = 17;
  // if (now > openHours && now < closedHours) {
  //   print('We are open');
  // } else {
  //   print('Closed');
  // }
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Start';
  } else {
    command = 'invalid color';
  }
  print(command);
}
