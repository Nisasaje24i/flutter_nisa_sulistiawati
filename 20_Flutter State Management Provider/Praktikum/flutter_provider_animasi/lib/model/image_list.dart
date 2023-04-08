import 'package:flutter/material.dart';

class ImageList extends ChangeNotifier {
  final List<String> imageList = [
    'assets/images/with_u.jpg',
    'assets/images/with_him.jpg',
    'assets/images/with_he.jpg',
    'assets/images/with_u1.jpg',
    'assets/images/with_u2.jpg',
    'assets/images/with_u3.jpg',
    'assets/images/unwith_u1.jpg',
    'assets/images/unwith_u2.jpg',
    'assets/images/unwith_u3.jpg',
  ];

  List<String> get image => imageList;
}
