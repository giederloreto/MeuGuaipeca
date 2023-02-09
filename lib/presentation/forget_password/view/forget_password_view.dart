import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_separate.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';

import '../../components/guaipeca_appbar.dart';

class ForgetPasswordView extends StatefulWidget {
  ForgetPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GuaipecaAppBar(
          title: 'Recuperação de senha', showBackIcon: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GuaipecaTextFormField(
              label: 'Digite seu e-mail',
            ),
            const GuaipecaSeparate(
              height: 20,
            ),
            GuaipecaLargeButton(
              label: 'Recuperar Senha',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
