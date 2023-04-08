import 'package:flutter/material.dart';
import 'package:flutter_animasi/model/db_manager.dart';
import 'package:flutter_animasi/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animasi/screens/menu_utama.dart';
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
      ChangeNotifierProvider(
        create: (context) => DbManager(),
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
        '/': (context) => LoginPage(),
      },
    );
  }
}
