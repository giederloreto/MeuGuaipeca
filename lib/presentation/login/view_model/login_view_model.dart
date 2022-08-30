import 'package:flutter/cupertino.dart';

import 'package:meu_guaipeca/data/login/login_network_interface.dart';

class LoginViewModel extends ChangeNotifier {
  late final ILoginNetwork loginNetwork;
  LoginViewModel({
    required this.loginNetwork,
  });

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    await loginNetwork.login(emailController.text, passwordController.text);
  }
}
