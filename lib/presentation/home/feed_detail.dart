import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

import '../../settings/Strings/strings.dart';

class FeedDetail extends StatefulWidget {
  const FeedDetail({Key? key}) : super(key: key);

  @override
  State<FeedDetail> createState() => _FeedDetailState();
}

class _FeedDetailState extends State<FeedDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GuaipecaAppBar(title: 'Feed de Noticias'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: GuaipecaTextDefault(
                text: 'O inverno para seu Pet',
                fontSize: 24,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 8),
              child: GuaipecaTextDefault(
                  text:
                      'Dicas para cuidado com seu amigo pet durante a estação mais fria do ano.',
                  fontSize: 14),
            ),
            Container(
              child: Image.network(
                  'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y'),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, top: 24),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(48.0),
                    child: Image.network(
                      'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',
                      fit: BoxFit.cover,
                      height: 25,
                      width: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GuaipecaTextDefault(
                    text: 'Gieder Loreto',
                    fontSize: 14,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 64),
                    child: Icon(Icons.share),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 32),
                    child: Icon(Icons.delete),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 32),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              child: GuaipecaTextDefault(
                  text: Strings.strings.feed,
                  fontSize: 14,
                  textAlign: TextAlign.justify),
            ),
          ],
        ),
      ),
    );
  }
}
