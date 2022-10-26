import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meu_guaipeca/data/registration/registration_network_interface.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class RegistrationNetwork implements IRegistrationNetwork {
  late final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> registration(String email, String password) async {
    try {
      var response = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      //  .then((value) => Navigator.pushNamed(context, RoutesNames.SPLASH));
      log('Registrou! Response -> $response'  );
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      log('Não Registrou');
    }
  }
}
