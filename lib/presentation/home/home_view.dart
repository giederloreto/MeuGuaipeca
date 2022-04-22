import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List feed = ['Gieder', 'Ariadne', 'Oliver', 'Olavo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const GuaipecaAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: feed.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  feed[2],
                ),
                subtitle: Text('O cão devolvido'),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://blog.petiko.com.br/wp-content/uploads/2018/10/01.png'),
                ),
                trailing: Text('trailing'),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
