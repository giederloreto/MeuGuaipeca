import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meu_guaipeca/data/login/login_network_interface.dart';

class LoginNetwork implements ILoginNetwork {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> login(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      log('DEU RUIM no LOGIN');
    }
  }
}
