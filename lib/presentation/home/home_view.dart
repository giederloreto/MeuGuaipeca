import 'package:flutter/material.dart';
import 'package:meu_guaipeca/meu_guaipeca_app.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_card_news.dart';
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
      backgroundColor: Colors.yellow[200],
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const Text(''),
        title: const GuaipecaTextDefault(
          text: 'Bem Vindo ao Meu Guaipeca',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      body: ListView(children: const [
        GuaipecaCardNew(
          image:
              'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y',
          title: 'Titulo da News',
          authorImage:
              'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',
          authorName: 'Gieder Loreto',
        ),
        GuaipecaCardNew(
          image:
              'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y',
          title: 'Titulo da News',
          authorImage:
              'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',
          authorName: 'Gieder Loreto',
        ),
        GuaipecaCardNew(
          image:
              'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y',
          title: 'Titulo da News',
          authorImage:
              'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',
          authorName: 'Gieder Loreto',
        ),
      ]),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
