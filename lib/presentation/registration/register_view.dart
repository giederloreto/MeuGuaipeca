import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_separate.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';

class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            children: [
              const GuaipecaSeparate(
                height: 50,
              ),
              CircleAvatar(),
              const GuaipecaSeparate(
                height: 50,
              ),
              GuaipecaTextFormField(label: 'Nome'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'E-mail'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'CPF'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'Senha'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'Confirmar Senha'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaLargeButton(label: 'Concluir')
            ],
          ),
        ),
      ),
    );
  }
}