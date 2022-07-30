import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';

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
      extendBodyBehindAppBar: true,
      body: Padding(padding: const EdgeInsets.all(16.0), child: ListView()),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
