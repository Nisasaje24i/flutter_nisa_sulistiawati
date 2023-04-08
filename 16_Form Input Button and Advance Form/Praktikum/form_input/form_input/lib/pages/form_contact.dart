import 'package:flutter/material.dart';
import 'package:form_input/theme/color.dart';
import 'package:form_input/model/input_decoration.dart';
import 'package:form_input/model/list_contact.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputData(),
    );
  }
}

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nomorController = TextEditingController();
  Color currentColor = Colors.orange;
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        alignment: Alignment.center,
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              bodyForm(context),
              bodyList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyForm(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.phone_android_sharp,
          size: 40,
        ),
        SizedBox(height: 20.0),
        Text('Create New Contacts',
            style: TextStyle(
              fontSize: 20,
            )),
        SizedBox(height: 5.0),
        Text(
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
          style: TextStyle(fontSize: 9),
        ),
        SizedBox(height: 7.0),
        TextFormField(
            controller: _nameController,
            decoration: InputDecorationStyle.inputDecorationStyle(
                'Name', 'Insert Your Name'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Insert Your Name!';
              } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                return 'Nama hanya boleh terdiri dari huruf dan spasi !';
              } else {
                List<String> nama = value.split(' ');
                for (String awal_nama in nama) {
                  if (awal_nama.isNotEmpty && !isCapitalized(awal_nama)) {
                    return 'Setiap awalan kata harus kapital !';
                  } else if (nama.length < 2) {
                    return "Nama minimal 2 kata !";
                  }

                  return null;
                }
              }
            }),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _nomorController,
          decoration:
              InputDecorationStyle.inputDecorationStyle('Nomor', '+62.....'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please Insert Your Number!';
            } else if (int.tryParse(value) == null) {
              return 'Please Input Type Integer !';
            } else if (value.length >= 15) {
              return 'Please Check Again Your Number is Available !';
            } else if (value.length <= 8) {
              return 'Please Check Again Your Number is Available !';
            } else if (value.startsWith("+62")) {
              return 'Please Check Again !';
            }
            return null;
          },
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    final contact = ListContact(
                      nama: _nameController.text,
                      noHp: _nomorController.text,
                    );
                    list_contact.add(contact);
                    _nameController.clear();
                    _nomorController.clear();
                  });
                }
              },
              child: Text('Submit'),
            ),
            SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  String nama = _nameController.text.trim();
                  String number = _nomorController.text.trim();
                  if (nama.isNotEmpty && number != 0) {
                    setState(() {
                      _nameController.text = '';
                      _nomorController.text = '';
                      list_contact[_index].nama = nama;
                      list_contact[_index].noHp = number;
                      _index = -1;
                    });
                  }
                },
                child: const Text('Update')),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Expanded bodyList() {
    return Expanded(
      child: ListView.builder(
        itemCount: list_contact.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Text(list_contact[index].nama),
                subtitle: Text(list_contact[index].noHp),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(list_contact[index].nama[0]),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        _nameController.text = list_contact[index].nama;
                        _nomorController.text = list_contact[index].noHp;
                        setState(() {
                          _index = index;
                        });
                      },
                      icon: Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Delete Person'),
                            content: Text('Are you sure you want to delete?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    list_contact.removeAt(index);
                                  });
                                  Navigator.pop(context);
                                },
                                child: Text('Yes'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('No'),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

bool isCapitalized(String word) {
  return word[0] == word[0].toUpperCase();
}
