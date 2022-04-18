import 'package:flutter/material.dart';
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
      body: Container(
        color: Colors.amber,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: 'Feed',
              icon: IconButton(
                icon: const Icon(GuaipecaIcon.newspaper),
                color: Colors.black,
                onPressed: () {},
              )),
          BottomNavigationBarItem(
              label: 'Meus Pets',
              icon: IconButton(
                icon: const Icon(GuaipecaIcon.dog),
                color: Colors.black,
                onPressed: () {},
              )),
          BottomNavigationBarItem(
            label: 'Adoção',
            icon: IconButton(
              icon: const Icon(GuaipecaIcon.baby_carriage),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          BottomNavigationBarItem(
            label: 'Loja',
            icon: IconButton(
              icon: const Icon(GuaipecaIcon.shop),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
