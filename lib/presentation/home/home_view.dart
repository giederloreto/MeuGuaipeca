import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List feed = ['Gieder', 'Ariadne'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView.builder(
        itemCount: feed.length,
        itemBuilder: (context, index) {
          return const Card(
            child: ListTile(
              title: Text(
                'Titulo',
              ),
              subtitle: Text('Subtitulo'),
              leading: Icon(Icons.pets),
            ),
          );
        },
      ),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
