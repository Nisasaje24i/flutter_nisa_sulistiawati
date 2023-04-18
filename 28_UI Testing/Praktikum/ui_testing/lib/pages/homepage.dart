import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to my home page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
