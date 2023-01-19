import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';

import '../../components/guaipeca_appbar.dart';

class CreateStoreView extends StatelessWidget {
  const CreateStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: const GuaipecaAppBar(
        title: 'Adicionar Seu Produto',
        showBackIcon: true,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GuaipecaTextFormField(label: 'add Link do seu produto'),
            const SizedBox(
              height: 20,
            ),
            const GuaipecaLargeButton(label: 'Publicar')
          ],
        ),
      ),
    );
  }
}
