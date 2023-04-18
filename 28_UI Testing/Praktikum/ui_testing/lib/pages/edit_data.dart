import 'package:flutter/material.dart';
import 'package:ui_testing/pages/form_contact.dart';

class EditContactScreen extends StatefulWidget {
  final List<String> contact;

  const EditContactScreen({required this.contact});

  @override
  _EditContactScreenState createState() => _EditContactScreenState();
}

class _EditContactScreenState extends State<EditContactScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _namaController;
  late TextEditingController _nomorController;

  @override
  void initState() {
    super.initState();
    _namaController = TextEditingController(text: widget.contact[0]);
    _nomorController = TextEditingController(text: widget.contact[1]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: InputData(),
    );
  }
}
