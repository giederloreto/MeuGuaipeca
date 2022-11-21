import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
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
  final _registerCpfViewModel = GetIt.I<RegisterCpfViewModel>();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _registerCpfViewModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GuaipecaAppBar(title: 'Fazer Cadastro', showBackIcon: false),
      body: SingleChildScrollView(
        child: Padding(
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
                      await _registerCpfViewModel.register().then((value) =>
                          Navigator.pushNamed(context, RoutesNames.LOGIN));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
