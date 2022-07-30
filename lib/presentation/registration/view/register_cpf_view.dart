import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_separate.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';
import 'package:meu_guaipeca/presentation/registration/view_model/register_cpf_view_model.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class RegisterCpfView extends StatefulWidget {
  const RegisterCpfView({Key? key}) : super(key: key);

  @override
  State<RegisterCpfView> createState() => _RegisterCpfViewState();
}

class _RegisterCpfViewState extends State<RegisterCpfView> {
  final _registerCpfViewModel = RegisterCpfViewModel();
  final _formKey = GlobalKey<FormState>();
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  'Faça seu cadastro',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const GuaipecaSeparate(
                  height: 20,
                ),
                GuaipecaTextFormField(
                  label: 'Nome',
                  controller: _registerCpfViewModel.controllerName,
                ),
                const GuaipecaSeparate(
                  height: 20,
                ),
                GuaipecaTextFormField(
                  label: 'E-mail',
                  controller: _registerCpfViewModel.controllerEmail,
                ),
                const GuaipecaSeparate(
                  height: 20,
                ),
                GuaipecaTextFormField(
                  label: 'CPF',
                  controller: _registerCpfViewModel.controllerCpf,
                ),
                const GuaipecaSeparate(
                  height: 20,
                ),
                GuaipecaTextFormField(
                  label: 'Senha',
                  controller: _registerCpfViewModel.controllerPassword,
                ),
                const GuaipecaSeparate(
                  height: 20,
                ),
                GuaipecaTextFormField(
                    label: 'Confirmar Senha',
                    controller:
                        _registerCpfViewModel.controllerPasswordConfirm),
                const GuaipecaSeparate(
                  height: 20,
                ),
                GuaipecaLargeButton(
                  label: 'Concluir',
                  onTap: () async {
                    _registerCpfViewModel.register;

                    Navigator.pushNamed(context, RoutesNames.SPLASH);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
