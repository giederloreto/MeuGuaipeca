import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meu_guaipeca/meu_guaipeca_app.dart';
import 'package:meu_guaipeca/settings/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await DependecyInjection().configureDependencies();
  runApp(const MeuGuaipeca());
}
