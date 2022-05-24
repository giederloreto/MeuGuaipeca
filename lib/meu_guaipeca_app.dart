import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/home/home_view.dart';
import 'package:meu_guaipeca/presentation/login/login.dart';

class MeuGuaipeca extends StatelessWidget {
  const MeuGuaipeca({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Guaipeca',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        backgroundColor: Colors.green,
        /* CoresProjeto{
          F8E214,
          716D75,
          F79814,
          0A58F7,
        }, */
      ),
      home: HomeView(),
    );
  }
}
