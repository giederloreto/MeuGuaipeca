import 'package:flutter/cupertino.dart';
import 'package:meu_guaipeca/business/login/login_business.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginBusiness _loginBusiness;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginViewModel(this._loginBusiness);

  Future<void> login() async {
    await _loginBusiness.login(emailController.text, passwordController.text);
  }
}
