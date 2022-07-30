import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:meu_guaipeca/business/registration/registration_business.dart';

class RegisterCpfViewModel extends ChangeNotifier {
  final RegistrationBusiness _registrationBusiness;

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerCpf = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPasswordConfirm = TextEditingController();

  RegisterCpfViewModel(this._registrationBusiness);

  Future<void> register() async {
    try {
      await _registrationBusiness.registration(
          controllerEmail.text, controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  }

  /* signup(String email, String password, BuildContext context) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => Navigator.pushNamed(context, RoutesNames.SPLASH));
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  } */
}
