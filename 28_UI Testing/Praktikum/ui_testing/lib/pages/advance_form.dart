import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:ui_testing/model/input_decoration.dart';
import 'package:ui_testing/model/list_contactAdvance.dart';

class HomePage extends StatelessWidget {
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
  int _index = -1;
  DateTime dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color currentColor = Colors.orange;
  File? fileOpen;
  List<ListContact> list_contact = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
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

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1999),
                  lastDate: DateTime(currentDate.year + 15),
                );
                setState(() {
                  if (selectDate != null) {
                    dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(dueDate))
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: double.infinity,
          color: currentColor,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(currentColor)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pick Your Color'),
                      content: SingleChildScrollView(
                        child: SlidePicker(
                          pickerColor: currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              currentColor = color;
                            });
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    );
                  });
            },
            child: const Text('Pick Color'),
          ),
        ),
      ],
    );
  }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pick Files'),
        const SizedBox(width: 1.0),
        Center(
          child: ElevatedButton(
            child: const Text('Pick and Open File'),
            onPressed: () {
              pickFile();
            },
          ),
        ),
      ],
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
        buildDatePicker(context),
        buildColorPicker(context),
        SizedBox(height: 5.0),
        buildFilePicker(),
        (fileOpen == null)
            ? Container()
            : SizedBox(width: 50, height: 50, child: Image.file(fileOpen!)),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                final FormState? formState = _formKey.currentState;
                String nama = _nameController.text.trim();
                String noHp = _nomorController.text.trim();
                DateTime date = dueDate;
                Color warna = currentColor;
                File? file = fileOpen;
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    final kontak = ListContact(
                        nama: nama,
                        noHp: noHp,
                        date: date,
                        warna: warna,
                        file: file);
                    _nameController.text = '';
                    _nomorController.text = '';
                    date = currentDate;
                    warna = currentColor;
                    file = fileOpen;
                    list_contactAdvance.add(ListContact(
                        nama: nama,
                        noHp: noHp,
                        date: date,
                        warna: warna,
                        file: file));
                    _nameController.clear();
                    _nomorController.clear();
                    list_contactAdvance.forEach((element) {
                      print(
                          'List Data : ${kontak.nama}, ${kontak.noHp}, ${kontak.date}, ${kontak.warna}, ${kontak.file}');
                    });
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
                      list_contactAdvance[_index].nama = nama;
                      list_contactAdvance[_index].noHp = number;
                      _index = -1;
                    });
                  }
                },
                child: const Text('Update')),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Expanded bodyList() {
    return Expanded(
      child: ListView.builder(
        itemCount: list_contactAdvance.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list_contactAdvance[index].nama),
            subtitle: Text(list_contactAdvance[index].noHp),
            leading: CircleAvatar(
              backgroundColor: currentColor,
              child: Text(list_contactAdvance[index].nama[0]),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    _nameController.text = list_contactAdvance[index].nama;
                    _nomorController.text = list_contactAdvance[index].noHp;
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
                                list_contactAdvance.removeAt(index);
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
          );
        },
      ),
    );
  }

  bool isCapitalized(String word) {
    return word[0] == word[0].toUpperCase();
  }

  @override
  void pickFile() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result == null) return;

    final file = result.files.first;
    Image.file(File(file.path.toString()));

    final path = result.files.single.path!;

    setState(() {
      fileOpen = File(path);
    });
  }
}
