import 'package:meu_guaipeca/data/login/login_network_interface.dart';

class LoginBusiness {
  final ILoginNetwork _loginNetwork;

  LoginBusiness(this._loginNetwork);

  Future<void> login(String email, String password) async =>
      await _loginNetwork.login(email, password);
}
