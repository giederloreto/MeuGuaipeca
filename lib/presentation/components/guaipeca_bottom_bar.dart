import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_icon.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class GuaipecaBottomBar extends StatefulWidget {
  final int indexBottom;
  const GuaipecaBottomBar({required this.indexBottom, Key? key})
      : super(key: key);

  @override
  State<GuaipecaBottomBar> createState() => _GuaipecaBottomBarState();
}

class _GuaipecaBottomBarState extends State<GuaipecaBottomBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
            fontFamily: 'Quicksand', fontSize: 14, fontWeight: FontWeight.bold),
        selectedItemColor: Colors.lightBlue[500],
        selectedFontSize: 30,
        backgroundColor: Colors.white70,
        elevation: 5,
        iconSize: MediaQuery.of(context).size.width * 0.07,
        currentIndex: widget.indexBottom,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              GuaipecaIcon.newspaper,
              color: Colors.black,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              GuaipecaIcon.dog,
              color: Colors.black,
            ),
            label: 'Meus Pets',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              GuaipecaIcon.baby_carriage,
              color: Colors.black,
            ),
            label: 'Adoção',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              GuaipecaIcon.shop,
              color: Colors.black,
            ),
            label: 'Loja',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              GuaipecaIcon.user,
              color: Colors.black,
            ),
            label: 'Perfil',
          ),
        ],
        onTap: (index) {
          setState(() {
            switch (index) {
              case 0:
                Navigator.pushReplacementNamed(
                  context,
                  RoutesNames.HOME,
                );
                break;
              case 1:
                Navigator.pushReplacementNamed(
                  context,
                  RoutesNames.MYPETS,
                );
              /* Navigator.popAndPushNamed(context, RoutesNames.MYPETS,
                    arguments: index); */
            }
          });
        },
      ),
    );
  }
}
