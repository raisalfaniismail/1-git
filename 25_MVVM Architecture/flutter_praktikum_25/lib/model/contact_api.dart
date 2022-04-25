import 'package:dio/dio.dart';
import 'package:flutter_praktikum_20/model/contact_model.dart';

class ContactAPI {
  static Future<List<Contact>> getContact() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');

    List<Contact> contacts = (response.data as List)
        .map((e) => Contact(id: e['id'], nama: e['nama'], nomor: e['nomor']))
        .toList();
    return contacts;
  }
}
