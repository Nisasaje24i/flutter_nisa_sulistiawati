import 'package:flutter/material.dart';
import 'package:ui_testing/model/list_contactAdvance.dart';

class ContactProvider extends ChangeNotifier {
  List<ListContact> _contacts = [];

  List<ListContact> get contacts => _contacts;

  void addContact(ListContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
