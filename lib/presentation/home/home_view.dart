import 'package:flutter/material.dart';
import 'package:meu_guaipeca/meu_guaipeca_app.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

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
      extendBodyBehindAppBar: false,
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(16),
        height: 250,
        width: 380,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(48),
            bottomRight: Radius.circular(48),
            topLeft: Radius.circular(48),
          ),
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    "https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y",
                    fit: BoxFit.cover,
                    height: 150,
                    width: 300,
                  ),
                ),
              ],
            ),
            GuaipecaTextDefault(
              text: "Meu Pet no Inverno",
              fontSize: 18,
            ),
            GuaipecaTextDefault(
              text: "Dicas para você ter mais atenção no inverno",
              fontSize: 12,
            )
          ],
        ),
      ),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
