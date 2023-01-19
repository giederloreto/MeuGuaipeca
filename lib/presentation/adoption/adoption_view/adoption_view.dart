import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_my_pet_card.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';
import 'package:meu_guaipeca/settings/constants/constants.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class AdoptionView extends StatefulWidget {
  const AdoptionView({Key? key}) : super(key: key);

  @override
  State<AdoptionView> createState() => _AdoptionViewState();
}

class _AdoptionViewState extends State<AdoptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesNames.CREATEADOPTION);
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
      extendBody: true,
      extendBodyBehindAppBar: false,
      backgroundColor: terciaryColor,
      appBar: const GuaipecaAppBar(
        title: 'Animais para Adoção',
        showBackIcon: false,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            //adoption;
            Navigator.pushNamed(context, RoutesNames.ADOPTIONDETAIL);
          },
          child: const GuaipecaMyPetCard(
            height: 80,
            width: 150,
            image:
                'https://media.istockphoto.com/photos/happy-dog-puppy-winking-an-eye-and-smiling-on-colored-blue-backgorund-picture-id1279308976?s=612x612',
            name: 'Otto',
            age: '1',
            fontSize: 14,
            dontShowCity: false,
          ),
        ),
        itemCount: 1,
      ),
      bottomNavigationBar: const GuaipecaBottomBar(indexBottom: 2),
    );
  }

  adoption() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: GuaipecaTextDefault(
          text: 'Tem interesse em Adotar o Otto?',
          fontSize: 14,
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: GuaipecaTextDefault(text: 'Sim', fontSize: 24)),
          SizedBox(
            width: 30,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: GuaipecaTextDefault(text: 'Não', fontSize: 24)),
        ],
      ),
    );
  }
}
