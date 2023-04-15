import 'package:dio/dio.dart';
import 'package:tugas_finite_state/model/contact_model.dart';

class ContactAPI {
  static Future<List<Contact>> getContact() async {
    final response = await Dio().get(
        "http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts");

    List<Contact> contacts = (response.data as List)
        .map(
          (e) => Contact(id: e['id'], name: e['name'], phone: e['phone']),
        )
        .toList();
    return contacts;
  }
}
