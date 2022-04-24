import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';

class Contact with ChangeNotifier {
  final List<GetContact> contacts = [];
  void add(GetContact contact) {
    contacts.add(contact);
    notifyListeners();
  }
}
