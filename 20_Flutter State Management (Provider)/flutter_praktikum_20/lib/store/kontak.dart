import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/model.dart';

class Kontak with ChangeNotifier {
  final List<GetKontak> kontaks = [];
  void add(GetKontak kontak) {
    kontaks.add(kontak);
    notifyListeners();
  }
}
