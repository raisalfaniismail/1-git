// import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/login_model.dart';

class LoginAPI {
  static Future<List<Login>> getLogin() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/');
    List<Login> logins = (response.data as List)
        .map((e) =>
            Login(username: e['id'], email: e['name'], password: e['phone']))
        .toList();
    return logins;
  }

  // Future<Login> postContact(Login login) async{
  //    Response response;
  //     var dio = Dio();
  //     var dataLogin = {
  //       'id': login.username,
  //       'name': login.email,
  //       'phone': login.password
  //     };
  //     var dataMap = jsonEncode(dataLogin);
  //     response = await dio.post(
  //         'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/',
  //         data: dataMap);
  //     return Login.fromJson(response.data);
  // }
}
