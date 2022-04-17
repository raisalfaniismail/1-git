import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';

class Kontak with ChangeNotifier {
  final List<GetKontak> kontaks = [];
  void add(GetKontak kontak) {
    kontaks.add(kontak);
    notifyListeners();
  }
}
