import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_card_news.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_my_pet_card.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

class MyPetsView extends StatefulWidget {
  const MyPetsView({Key? key}) : super(key: key);

  @override
  State<MyPetsView> createState() => _MyPetsViewState();
}

class _MyPetsViewState extends State<MyPetsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: const GuaipecaAppBar(title: 'Meus Pets', showBackIcon: false,),
      bottomNavigationBar: const GuaipecaBottomBar(
        indexBottom: 1,
      ),
      body: ListView(
        children: const [
          GuaipecaMyPetCard(
            image:
                'https://static3.depositphotos.com/1006075/220/i/600/depositphotos_2201124-stock-photo-lhasa-apso.jpg',
            name: 'Oliver',
            age: '5',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlue[200],
        child: const Icon(Icons.add),
      ),
    );
  }
}
