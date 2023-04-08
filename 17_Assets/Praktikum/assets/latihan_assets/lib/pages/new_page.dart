import 'package:flutter/material.dart';
import 'package:latihan_assets/pages/home_page.dart';

class NewPage extends StatefulWidget {
  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    final _index = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(45, 120, 40, 45),
          child: Column(
            children: [Image.asset(_index)],
          ),
        ),
      ),
    );
  }
}
