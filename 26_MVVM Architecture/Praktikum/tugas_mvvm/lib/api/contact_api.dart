import 'package:dio/dio.dart';
import 'package:tugas_mvvm/model/contact_model.dart';
import 'package:tugas_mvvm/model/user.dart';

class Service {
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

  static Future<Contact?> getDataById(int id) async {
    var response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/$id");
    return Contact(
        id: response.data['id'],
        name: response.data['name'],
        phone: response.data['phone']);
  }

  static Future<Contact?> postContact(String name, String phone) async {
    var response = await Dio().post(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts",
        data: {'name': name, 'phone': phone});
    if (response.statusCode == 201) {
      return Contact(
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          name: response.data['name'],
          phone: response.data['phone']);
    }
    return null;
  }

  static Future<User?> putUser(String userId, String title, String body) async {
    var response =
        await Dio().put("https://jsonplaceholder.typicode.com/posts/1", data: {
      'userId': int.parse(userId),
      // 'id': int.parse(id),
      'title': title,
      'body': body
    });
    if (response.statusCode == 200) {
      return User(
          userId: response.data['userId'],
          // id: response.data['id'],
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          title: response.data['title'],
          body: response.data['body']);
    }
    return null;
  }
}
