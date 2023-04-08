import 'package:coba/model/contact.dart';
import 'package:coba/bloc/counter_state.dart';
import 'package:coba/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

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
        title: Text('Contact List'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return ListView.builder(
          itemCount: state.contacts.length,
          itemBuilder: (context, index) {
            final Contact contact = state.contacts[index];
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.phoneNumber),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   PageTransition(
                      //     type: PageTransitionType.fade,
                      //     duration: const Duration(milliseconds: 800),
                      //     reverseDuration: const Duration(milliseconds: 800),
                      //     child: const ContactPage(),
                      //   ),
                      // );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddContact(),
                        ),
                      );
                      //   Navigator.of(context).pop(contactProvider);
                    },
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddContact()),
        ),
        tooltip: 'Add Contact',
        child: Icon(Icons.add),
      ),
    );
  }
}
