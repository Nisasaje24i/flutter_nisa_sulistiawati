import 'package:flutter/material.dart';
import 'package:tugas_mvvm/screen/post_get_contact.dart';
import 'package:tugas_mvvm/screen/put_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PostGet(),
      // home: const PutData(),
    );
  }
}
