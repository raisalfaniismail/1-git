import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/api/login_api.dart';
import 'package:flutter_application_1/model/login_model.dart';

class LoginStateModel with ChangeNotifier {
  List<LoginModel> _logins = [];
  List<LoginModel> get logins => _logins;
  // getAllLogins() async {
  //   final c = await LoginAPI.();
  //   _logins =  c;
  //   notifyListeners();
  // }
}
