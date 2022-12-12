import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meu_guaipeca/business/login/login_business.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginBusiness _loginBusiness;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginViewModel(this._loginBusiness);

  Future<void> login(BuildContext context) async {
    try {
      await _loginBusiness
          .login(emailController.text, passwordController.text)
          .then((value) => Navigator.pushNamed(context, RoutesNames.HOME));
    } catch (e) {
      log(e.toString());
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
