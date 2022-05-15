import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/login_model.dart';

class LoginAPI {
  Future<LoginModel> login(
      {required String nama,
      required String email,
      required String password}) async {
    var body = {"nama ": nama, "email": email, "password": int.parse(password)};
    Dio dio = Dio();

    String dataBody = jsonEncode(body);
    print(dataBody);
    Response response = await dio.post(
      'http://restapi.adequateshop.com/api/authaccount/login',
      data: dataBody,
    );
    return LoginModel.fromJson(response.data);
  }
}
