import 'dart:convert';

import 'package:dio/dio.dart';

class Contact {
  int id;
  String name;
  String phone;

  Contact({required this.id, required this.name, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}

void main() async {
  final url =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2';

  final response = await Dio().get(url);
  final json = response.data;

  final contact = Contact.fromJson(json);

  print(contact.id);
  print(contact.name);
  print(contact.phone);
}
