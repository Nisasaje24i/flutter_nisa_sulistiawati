import 'dart:convert';
import 'package:http/http.dart' as http;
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
  final url = Uri.parse(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');

  final response = await http.get(url);
  final json = jsonDecode(response.body);

  final contact = Contact.fromJson(json);

  print(contact.id);
  print(contact.name);
  print(contact.phone);
}
