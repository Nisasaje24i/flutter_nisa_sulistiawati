import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TambahKontak extends StatefulWidget {
  @override
  _TambahKontakState createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  final dio = Dio();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  String _messagePost = '';

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                ),
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Nomor',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final contactData = {
                      'name': _nameController.text,
                      'phone': _phoneController.text,
                    };

                    try {
                      final response = await dio.post(
                        'http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
                        data: contactData,
                      );

                      setState(() {
                        _messagePost = json.encode(response.data);
                      });
                    } catch (e) {
                      setState(() {
                        _messagePost = e.toString();
                      });
                    }
                  }
                },
                child: const Text('POST'),
              ),
              if (_messagePost.isNotEmpty)
                SizedBox(
                  height: 16.0,
                  child: Text('Data yang di post$_messagePost'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
