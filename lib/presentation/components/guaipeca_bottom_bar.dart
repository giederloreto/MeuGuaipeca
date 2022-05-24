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
      selectedLabelStyle: TextStyle(
          fontFamily: 'Quicksand', fontSize: 14, fontWeight: FontWeight.bold),
      selectedItemColor: Colors.orange,
      selectedFontSize: 30,
      backgroundColor: Colors.white,
      elevation: 5,
      iconSize: MediaQuery.of(context).size.width * 0.07,
      currentIndex: _indexBottom,
      type: BottomNavigationBarType.fixed,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(
            GuaipecaIcon.newspaper,
            color: Colors.black,
          ),
          label: 'Feed',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            GuaipecaIcon.dog,
            color: Colors.black,
          ),
          label: 'Meus Pets',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            GuaipecaIcon.baby_carriage,
            color: Colors.black,
          ),
          label: 'Adoção',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            GuaipecaIcon.shop,
            color: Colors.black,
          ),
          label: 'Loja',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            GuaipecaIcon.user,
            color: Colors.black,
          ),
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
