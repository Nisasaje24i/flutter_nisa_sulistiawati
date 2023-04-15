import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tugas_mvvm/api/contact_api.dart';

class PutData extends StatefulWidget {
  const PutData({Key? key}) : super(key: key);

  @override
  _PutDataState createState() => _PutDataState();
}

class _PutDataState extends State<PutData> {
  final dio = Dio();
  final _formKey = GlobalKey<FormState>();
  final _userIdController = TextEditingController();
  final _idController = TextEditingController();
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();
  String _messagePut = '';

  @override
  void dispose() {
    _userIdController.dispose();
    _idController.dispose();
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _userIdController,
                decoration: const InputDecoration(
                  labelText: 'USER ID',
                ),
              ),
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextFormField(
                controller: _bodyController,
                decoration: const InputDecoration(
                  labelText: 'Body',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final userData = {
                          'userId': int.parse(_userIdController.text),
                          'title': _titleController.text,
                          'body': _bodyController.text,
                        };

                        final user = await Service.putUser(
                          _userIdController.text,
                          _titleController.text,
                          _bodyController.text,
                        );

                        setState(() {
                          _messagePut = json.encode(user!.toJson());
                        });
                      }
                    },
                    child: const Text('PUT'),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                ],
              ),
              if (_messagePut.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 70,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var field in json.decode(_messagePut).entries)
                        Text('${field.key}: ${field.value}')
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
