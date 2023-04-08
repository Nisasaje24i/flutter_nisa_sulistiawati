void main() {
  // withinTolerance(value: 8, min: 2, max: 10);
  withinTolerance(value: 12);
}

// bool withinTolerance({int? value, int min = 0, int max = 10}) {
//   return min <= value! && value <= max;
// }
bool withinTolerance({required int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}
