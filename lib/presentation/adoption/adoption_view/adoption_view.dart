import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_my_pet_card.dart';

class AdoptionView extends StatefulWidget {
  const AdoptionView({Key? key}) : super(key: key);

  @override
  State<AdoptionView> createState() => _AdoptionViewState();
}

class _AdoptionViewState extends State<AdoptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.lightBlue[50],
      appBar: const GuaipecaAppBar(
        title: 'Animais para Adoção',
        showBackIcon: false,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, index) => GuaipecaMyPetCard(
          height: 80,
          width: 80,
            image:
                'https://media.istockphoto.com/photos/happy-dog-puppy-winking-an-eye-and-smiling-on-colored-blue-backgorund-picture-id1279308976?s=612x612',
            name: 'Otto',
            age: '1'),
        itemCount: 4,
      ),
      bottomNavigationBar: const GuaipecaBottomBar(indexBottom: 2),
    );
  }
}
