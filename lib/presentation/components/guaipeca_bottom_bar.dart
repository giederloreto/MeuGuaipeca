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
      currentIndex: _indexBottom,
      type: BottomNavigationBarType.fixed,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
            icon: Icon(GuaipecaIcon.newspaper),
            label: 'Feed',
            backgroundColor: Colors.red),
        const BottomNavigationBarItem(
            icon: Icon(GuaipecaIcon.dog),
            label: 'Meus Pets',
            backgroundColor: Colors.red),
        const BottomNavigationBarItem(
            icon: Icon(GuaipecaIcon.baby_carriage),
            label: 'Adoção',
            backgroundColor: Colors.red),
        const BottomNavigationBarItem(
            icon: Icon(GuaipecaIcon.shop),
            label: 'Loja',
            backgroundColor: Colors.red),
      ],
      onTap: (index) {
        setState(() {
          _indexBottom = index;
        });
      },
    );
  }
}
