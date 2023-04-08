void main() {
  const score = 83;
  // String message;
  // if (score >= 60) {
  //   message = 'You passed';
  // } else {
  //   message = 'You failed';
  // }

  //ternary operation
  String message = (score >= 60) ? 'You passed' : 'You failed';
  print(message);
}
//berjalan secara syncronus