import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meu_guaipeca/data/registration/registration_network_interface.dart';

class RegistrationNetwork implements IRegistrationNetwork {
  late final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> registration(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      //  .then((value) => Navigator.pushNamed(context, RoutesNames.SPLASH));
      log('Registrou!');
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
    }
  }
}
