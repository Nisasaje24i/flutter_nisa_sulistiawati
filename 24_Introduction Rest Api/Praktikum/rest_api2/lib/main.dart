import 'package:flutter/material.dart';
import 'package:rest_api2/ekplorasi.dart';
import 'package:rest_api2/prioritas%201/post_get_contact.dart';
import 'package:rest_api2/prioritas%201/put_data.dart';
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
      title: 'REST API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrioritasDua(),
      // home: Eksplorasi(),
      // home: PostGet(), //prioritas 1 no 1 dan 2
      // home: const PutData(), //prioritas 1 no 3
    );
  }
}
