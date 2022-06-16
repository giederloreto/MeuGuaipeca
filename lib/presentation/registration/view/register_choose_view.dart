import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_separate.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class RegisterChooseView extends StatefulWidget {
  RegisterChooseView({Key? key}) : super(key: key);

  @override
  State<RegisterChooseView> createState() => _RegisterChooseViewState();
}

class _RegisterChooseViewState extends State<RegisterChooseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Escolha seu tipo de Cadastro',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GuaipecaLargeButton(
              label: 'Pessoa Fisica',
              onTap: () {
                Navigator.pushNamed(context, RoutesNames.REGISTERCPF);
              },
            ),
            GuaipecaSeparate(height: 50),
            GuaipecaLargeButton(
              label: 'Associações',
              onTap: () {
                Navigator.pushNamed(context, RoutesNames.REGISTERCNPJ);
              },
            )
          ],
        ),
      ),
    );
  }
}
