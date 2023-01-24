import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';

import '../components/guaipeca_appbar.dart';

class CreateFeed extends StatefulWidget {
  const CreateFeed({Key? key}) : super(key: key);

  @override
  State<CreateFeed> createState() => _CreateFeedState();
}

class _CreateFeedState extends State<CreateFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GuaipecaAppBar(
        title: 'Adicionar Feed',
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
              height: MediaQuery.of(context).size.height / 1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: GuaipecaTextFormField(
                      label: 'Titulo',
                    ),
                  ),
                  GuaipecaTextFormField(
                    label: 'Digite seu texto aqui...',
                    minLines: 15,
                    keyboardType: TextInputType.multiline,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: GuaipecaLargeButton(
                      label: 'Postar', onTap: () {  },
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
