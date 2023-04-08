import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animasi/pages/material_page.dart';
import 'package:flutter_animasi/model/image_list.dart' as img;
import 'package:flutter_animasi/provider/contact.dart' as contact_store;

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => img.ImageList(),
      ),
      ChangeNotifierProvider(
        create: (_) => contact_store.Contact(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Galery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HalamanGalery(),
      },
    );
  }
}
