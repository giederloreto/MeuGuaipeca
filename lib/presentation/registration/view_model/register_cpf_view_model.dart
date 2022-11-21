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
  late final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;
  RegisterCpfViewModel(this._registrationBusiness) {
    _checkAuth();
  }

  Future<void> register() async {
    try {
      await _registrationBusiness.registration(
          controllerEmail.text, controllerPassword.text);
      _getUser();
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  }

  _checkAuth() {
    _firebaseAuth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  _getUser() {
    usuario = _firebaseAuth.currentUser;
    log(usuario.toString());
    notifyListeners();
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
