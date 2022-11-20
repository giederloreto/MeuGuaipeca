import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';

class AdoptionView extends StatefulWidget {
  const AdoptionView({Key? key}) : super(key: key);

  @override
  State<AdoptionView> createState() => _AdoptionViewState();
}

class _AdoptionViewState extends State<AdoptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: const GuaipecaAppBar(
        title: 'Animais para Adoção',
        showBackIcon: false,
      ),
      body: Container(),
      bottomNavigationBar: const GuaipecaBottomBar(indexBottom: 2),
    );
  }
}
