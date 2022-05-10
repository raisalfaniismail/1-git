import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/api/login_api.dart';
import 'package:flutter_application_1/model/login_model.dart';

class LoginViewModel with ChangeNotifier {
  List<Login> _logins = [];
  List<Login> get logins => _logins;
  getAllLogins() async {
    final c = await LoginAPI.getLogin();
    _logins = c;
    notifyListeners();
  }
}
