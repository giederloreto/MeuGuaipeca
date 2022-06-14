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
  bool isCnpj = false;
  String cpfOrCnpj = 'cpf';
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
              Text(
                'Cadastro',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Switch(
                  value: isCnpj,
                  onChanged: (value) {
                    setState(() {
                      isCnpj = !isCnpj;
                    });
                  }),
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
              if (isCnpj != false)
                GuaipecaTextFormField(label: 'CNPJ')
              else
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
