import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(),
              SizedBox(
                height: 50,
              ),
              GuaipecaTextFormField(label: 'Nome'),
              SizedBox(
                height: 50,
              ),
              GuaipecaTextFormField(label: 'E-mail'),
              SizedBox(
                height: 50,
              ),
              GuaipecaTextFormField(label: 'CPF'),
              SizedBox(
                height: 50,
              ),
              GuaipecaTextFormField(label: 'Senha'),
              SizedBox(
                height: 50,
              ),
              GuaipecaLargeButton(label: 'Concluir')
            ],
          ),
        ),
      ),
    );
  }
}
