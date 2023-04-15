import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tugas_mvvm/api/contact_api.dart';

class PostGet extends StatefulWidget {
  @override
  _PostGetState createState() => _PostGetState();
}

class _PostGetState extends State<PostGet> {
  final dio = Dio();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  String _messagePost = '';
  String _messageGet = '';
  bool _isPost = false;
  bool _isGet = false;

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
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final contact = await Service.postContact(
                          _nameController.text,
                          _phoneController.text,
                        );

                        setState(() {
                          _isPost = true;
                          _isGet = false;
                          _messagePost = json.encode(contact!.toJson());
                        });
                      }
                    },
                    child: const Text('POST'),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final contact = await Service.getDataById(2);
                        setState(() {
                          _isPost = false;
                          _isGet = true;
                          _messageGet = json.encode(contact!.toJson());
                        });
                      }
                    },
                    child: const Text('GET'),
                  ),
                ],
              ),
              if (_messagePost.isNotEmpty || _messageGet.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_isPost && _messagePost.isNotEmpty)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 70,
                        width: 400,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (var field in json.decode(_messagePost).entries)
                              Text('${field.key}: ${field.value}')
                          ],
                        ),
                      ),
                    if (_isGet && _messageGet.isNotEmpty)
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
                            for (var field in json.decode(_messageGet).entries)
                              Text('${field.key}: ${field.value}')
                          ],
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
