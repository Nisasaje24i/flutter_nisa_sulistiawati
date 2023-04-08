import 'package:coba/bloc/counter_state.dart';
import 'package:coba/pages/new_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  String name = '';
  String phone = '';

  void _submitForm(BuildContext context) {
    final String name = _nameController.text;
    final String phoneNumber = _phoneNumberController.text;
    BlocProvider.of<CounterBloc>(context)
        .add(AddContactEvent(name: name, phoneNumber: phoneNumber));
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD CONTACT BLOC'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Nomor',
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _submitForm(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactList(),
                      ),
                    );
                  },
                  child: Text('ADD CONTACT'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
