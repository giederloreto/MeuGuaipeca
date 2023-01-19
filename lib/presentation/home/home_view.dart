import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meu_guaipeca/meu_guaipeca_app.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_card_news.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';
import 'package:meu_guaipeca/settings/constants/constants.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: terciaryColor,
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: const GuaipecaTextDefault(
          text: 'Bem Vindo ao Meu Guaipeca',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RoutesNames.FEED);
          },
          child: GuaipecaCardNew(
            image:
                'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y',
            title: 'O Inverno para seu Pet',
            authorImage:
                'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',
            authorName: 'Gieder Loreto',
          ),
        ),
        GuaipecaCardNew(
          image:
              'https://media.istockphoto.com/photos/happy-dog-puppy-winking-an-eye-and-smiling-on-colored-blue-backgorund-picture-id1279308976?s=612x612',
          title: 'Existe cão albino?',
          authorImage:
              'https://media.istockphoto.com/vectors/young-smiling-man-adam-avatar-vector-id1365197769?s=612x612',
          authorName: 'Alex Valério',
        ),
        GuaipecaCardNew(
          image:
              'https://media.istockphoto.com/photos/british-short-hair-cat-and-golden-retriever-picture-id992637094?s=612x612',
          title: 'Dicas: Cão e Gato em Casa.',
          authorImage:
              'https://media.istockphoto.com/photos/illustration-of-cute-cartoon-man-with-eyeglasses-in-blue-shirt-with-picture-id1312136351?s=612x612',
          authorName: 'Fabio Vasques',
        ),
      ]),
      bottomNavigationBar: const GuaipecaBottomBar(
        indexBottom: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesNames.FEEDCREATE);
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }
}
