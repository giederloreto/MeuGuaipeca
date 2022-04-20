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
        child: Center(
          child: Text(
            'Teste com fonte nova',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            iconSize: 5,
            items: [
              BottomNavigationBarItem(
                label: 'Feed',
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Icon(GuaipecaIcon.newspaper),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: IconButton(
                    icon: const Icon(GuaipecaIcon.dog),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                label: 'Meus Pet',
              ),
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
        ],
      ),
    );
  }
}
