import 'package:flutter/material.dart';
import 'package:rest_api2/ekplorasi.dart';
import 'package:rest_api2/prioritas%201/post_contact.dart';
import 'package:rest_api2/prioritas2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DiceBear Avatar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      home: Eksplorasi(),
      // home: TambahKontak(),
    );
  }
}
