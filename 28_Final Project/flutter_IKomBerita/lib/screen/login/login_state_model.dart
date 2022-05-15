import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/api/login_api.dart';
import 'package:flutter_application_1/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginState extends ChangeNotifier {
  LoginAPI loginApi = LoginAPI();
  LoginModel loginModel = LoginModel();

  Future<void> login({required String email, required String password}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    loginModel = await loginApi.login(
      nama: '',
      email: email,
      password: password,
    );
    if (loginModel.data!.email != null) {
      sharedPreferences.setString('email', loginModel.data!.email!);
      sharedPreferences.setString('password', password);
    }
    notifyListeners();
  }
}
