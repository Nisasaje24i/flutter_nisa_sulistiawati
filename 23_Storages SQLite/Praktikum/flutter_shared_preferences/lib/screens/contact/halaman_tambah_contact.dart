import 'package:flutter/material.dart';
import 'package:flutter_animasi/model/db_manager.dart';
import 'package:flutter_animasi/model/contact_model.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class TambahKontak extends StatefulWidget {
  final ContactModel? contactModel;
  const TambahKontak({
    Key? key,
    this.contactModel,
  }) : super(key: key);

  @override
  _ContactItemScreenState createState() => _ContactItemScreenState();
}

class _ContactItemScreenState extends State<TambahKontak> {
  final _nameController = TextEditingController();
  final _nomorController = TextEditingController();
  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.contactModel != null) {
      _nameController.text = widget.contactModel!.nama;
      _nomorController.text = widget.contactModel!.nomor;
      _isUpdate = true;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nomorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact', style: GoogleFonts.poppins()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            bodyForm(),
            const SizedBox(
              height: 16,
            ),
            // buildButton
            // TODO 12: buat button
            buttonSubmit(),
          ],
        ),
      ),
    );
  }

  Widget bodyForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _nameController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'Insert your name',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _nomorController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'Insert your number',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buttonSubmit() {
    return ElevatedButton(
      child: Text(
        'Submit',
        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        if (!_isUpdate) {
          final contact = ContactModel(
              nama: _nameController.text, nomor: _nomorController.text);
          Provider.of<DbManager>(context, listen: false).addContact(contact);
        } else {
          final contact = ContactModel(
            id: widget.contactModel!.id,
            nama: _nameController.text,
            nomor: _nomorController.text,
          );
          Provider.of<DbManager>(context, listen: false).updateContact(contact);
        }
        Navigator.pop(context);
      },
    );
  }
}
