import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/login/login.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
            child: ElevatedButton(
          child: Text('next'),
          onPressed: () {
            navigator();
          },
        )),
      ),
    );
  }

  Future<void> navigator() async {
    await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => LoginView(),
      ),
      (route) => false,
    );
  }
}
