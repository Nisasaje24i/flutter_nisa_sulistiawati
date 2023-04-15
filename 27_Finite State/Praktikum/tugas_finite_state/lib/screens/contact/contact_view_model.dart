import 'package:flutter/material.dart';
import 'package:tugas_finite_state/model/contact_model.dart';

import '../../api/contact_api.dart';

enum ContactViewState {
  none,
  loading,
  error,
}

class ContactViewModel with ChangeNotifier {
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllContacts() async {
    changeState(ContactViewState.loading);

    try {
      final c = await ContactAPI.getContact();
      _contacts = c;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }
}
