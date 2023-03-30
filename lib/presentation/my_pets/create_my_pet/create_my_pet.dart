import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

import '../../components/guaipeca_appbar.dart';
import '../../components/guaipeca_text_form_field.dart';

class CreateMyPet extends StatefulWidget {
  const CreateMyPet({Key? key}) : super(key: key);

  @override
  State<CreateMyPet> createState() => _CreateMyPetState();
}

class _CreateMyPetState extends State<CreateMyPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GuaipecaAppBar(
        title: 'Adicionar Meu Pet',
        showBackIcon: true,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 250,
                  color: Colors.black.withOpacity(0.37),
                ),
                Icon(
                  Icons.add_a_photo,
                  size: 48,
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: MediaQuery.of(context).size.height / 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: GuaipecaTextFormField(
                      label: 'Nome',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: GuaipecaLargeButton(
                      label: 'Salvar',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
