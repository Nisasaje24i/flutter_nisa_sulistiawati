//enums akan sering digunakan di control flow. enums adalah tipe data
//kita sendiri dengan beberapa option
void main() {
  const weather = 'cloudy';

  switch (weather) {
    case 'sunny':
      print('Put on sunscreen');
      break;
    case 'snowy':
      print('get your skis');
      break;
    case 'cloudy':
    case 'rainy':
    case 'add':
      print('bring umbrella');
      break;
    default:
      print('something else');
  }
}
