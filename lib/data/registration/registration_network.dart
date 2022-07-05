import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meu_guaipeca/data/registration/registration_network_interface.dart';

class Registration implements IRegistrationNetwork {
  @override
  Future registration(String email, String password) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      //  .then((value) => Navigator.pushNamed(context, RoutesNames.SPLASH));
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  }
}
