import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_separate.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';

class RegisterCnpjView extends StatelessWidget {
  const RegisterCnpjView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Cadastro',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Faça seu cadastro',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'Nome'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'E-mail'),
              const GuaipecaSeparate(
                height: 20,
              ),
              GuaipecaTextFormField(label: 'CNPJ'),
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
