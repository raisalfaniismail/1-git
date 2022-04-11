import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/model.dart';

class Kontak with ChangeNotifier {
  final List<GetKontak> _kontak = [];

  List<GetKontak> get kontak => _kontak;

  void add(GetKontak kontak) {
    _kontak.add(kontak);
    notifyListeners();
  }
}
