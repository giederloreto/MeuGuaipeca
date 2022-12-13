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
              child: Image.network(
                  'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y'),
            ),
            GuaipecaTextDefault(text: 'O inverno para Pet', fontSize: 24,),

            GuaipecaTextDefault(text:Strings.strings.forgetPassword , fontSize: 14),
          ],
        ),
      ),
    );
  }
}
