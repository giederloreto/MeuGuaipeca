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
                    child: GuaipecaTextFormField(
                      label: 'Idade',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.7, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    child: DropdownButton<String>(
                      iconSize: 32,
                      underline:
                          DropdownButtonHideUnderline(child: Container()),
                      hint: GuaipecaTextDefault(
                        text: 'Espécie',
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                      // isExpanded: true,
                      items: <String>['Canino', 'Felino'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.7, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    child: DropdownButton<String>(
                      iconSize: 32,
                      underline:
                          DropdownButtonHideUnderline(child: Container()),
                      hint: GuaipecaTextDefault(
                        text: 'Sexo',
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                      // isExpanded: true,
                      items: <String>['Macho', 'Fêmea'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: GuaipecaTextFormField(
                      label: 'Raça',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: GuaipecaTextFormField(
                      label: 'Cidade',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: GuaipecaLargeButton(
                      label: 'Salvar', onTap: () {  },
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
