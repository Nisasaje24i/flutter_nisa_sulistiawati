import 'package:flutter/material.dart';

class GalerySatu extends StatelessWidget {
  final String imagePath;

  GalerySatu({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final image = imagePath;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Galery'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(100),
            child: Image(image: AssetImage(image)),
          ),
        ],
      ),
    );
  }
}
