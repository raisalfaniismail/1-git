import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/model/contact_api.dart';
import 'package:flutter_praktikum_20/model/contact_model.dart';

class ContactViewModel with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  getAllContact() async {
    final c = await ContactAPI.getContact();
    _contacts = c;
    notifyListeners();
  }
}
