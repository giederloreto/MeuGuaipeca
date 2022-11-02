import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';

class MyPetsView extends StatefulWidget {
  const MyPetsView({Key? key}) : super(key: key);

  @override
  State<MyPetsView> createState() => _MyPetsViewState();
}

class _MyPetsViewState extends State<MyPetsView> {
  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyPets'),
      ),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
