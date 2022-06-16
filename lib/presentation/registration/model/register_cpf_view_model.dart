import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class RegisterCpfViewModel extends ChangeNotifier {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerCpf = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPasswordConfirm = TextEditingController();

  signup(String email, String password, BuildContext context) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => Navigator.pushNamed(context, RoutesNames.SPLASH));
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  }
}
