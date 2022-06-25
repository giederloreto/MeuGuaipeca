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
  final color = const Color(0XFFdbb49f);

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginView())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bem vindo\nao\nMeu Guaipeca',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  child: Image.asset(
                    'assets/images/loading.gif',
                  ),
                ),
              ],
            ),
          ),
        ),
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
