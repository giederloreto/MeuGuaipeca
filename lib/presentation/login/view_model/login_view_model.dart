import 'package:flutter/cupertino.dart';
import 'package:meu_guaipeca/business/login/login_business.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginBusiness _loginBusiness;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginViewModel(this._loginBusiness);

  Future<void> login(BuildContext context) async {
    await _loginBusiness.login(emailController.text, passwordController.text).then((value) =>
                            Navigator.pushNamed(context, RoutesNames.HOME));
  }
}
