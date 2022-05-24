import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_icon.dart';

class GuaipecaBottomBar extends StatefulWidget {
  const GuaipecaBottomBar({Key? key}) : super(key: key);

  @override
  State<GuaipecaBottomBar> createState() => _GuaipecaBottomBarState();
}

class _GuaipecaBottomBarState extends State<GuaipecaBottomBar> {
  int _indexBottom = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.yellow[700],
      elevation: 5,
      iconSize: MediaQuery.of(context).size.width * 0.08,
      currentIndex: _indexBottom,
      type: BottomNavigationBarType.fixed,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(GuaipecaIcon.newspaper),
          label: 'Feed',
        ),
        const BottomNavigationBarItem(
          icon: Icon(GuaipecaIcon.dog),
          label: 'Meus Pets',
        ),
        const BottomNavigationBarItem(
          icon: Icon(GuaipecaIcon.baby_carriage),
          label: 'Adoção',
        ),
        const BottomNavigationBarItem(
          icon: Icon(GuaipecaIcon.shop),
          label: 'Loja',
        ),
        const BottomNavigationBarItem(
          icon: Icon(GuaipecaIcon.user),
          label: 'Perfil',
        ),
      ],
      onTap: (index) {
        setState(() {
          _indexBottom = index;
        });
      },
    );
  }
}
