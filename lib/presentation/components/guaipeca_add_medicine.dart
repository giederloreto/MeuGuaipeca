import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';

import 'guaipeca_text_default.dart';

class GuaipecaAddMedicini extends StatelessWidget {
  const GuaipecaAddMedicini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        color: Colors.yellow,
        padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const GuaipecaTextDefault(
                  text: 'Adicionar Medicamentos',
                  fontSize: 14,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: 50,
                  child: const GuaipecaTextFormField(label: 'Nome'),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: 50,
                  child: const GuaipecaTextFormField(label: 'Data'),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: 50,
                  child: const GuaipecaTextFormField(label: 'Próxima'),
                ),
                Container(
                    width: 85,
                    child: const GuaipecaLargeButton(
                      label: 'Salvar',
                      color: Colors.blue,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
