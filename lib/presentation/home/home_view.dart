import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        color: Colors.amber,
        child: const Center(
          child: Text(
            'Teste com fonte nova',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
      ),
      bottomNavigationBar: GuaipecaBottomBar(),
    );
  }
}
