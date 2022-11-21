import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
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
      appBar: GuaipecaAppBar(title: 'Escolha seu tipo de cadastro',),

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
            const GuaipecaSeparate(height: 50),
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
