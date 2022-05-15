import 'dart:core';

import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/api/login_api.dart';
import 'package:flutter_application_1/model/login_model.dart';

class LoginView with ChangeNotifier {
  List<LoginModel> _login = [];
  List<LoginModel> get logins => logins;

  getAllLogin() async {
    LoginAPI loginAPI = LoginAPI();
    final c = await loginAPI.login(email: '', nama: '', password: '');
    _login = c as List<LoginModel>;
    notifyListeners();
  }
}
