import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

class GuaipecaMyPetCard extends StatelessWidget {
  final String image;
  final String name;
  final String age;
  const GuaipecaMyPetCard({required this.image, required this.name, required this.age, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 250,
      width: 380,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 150,
              width: 300,
            ),
          ),
          Row(
            children: [
              const GuaipecaTextDefault(
                text: 'Nome: ',
                fontSize: 18,
              ),
              GuaipecaTextDefault(
                text: name,
                fontSize: 18,
              ),
            ],
          ),
          Row(
            children: [
              const GuaipecaTextDefault(
                text: 'Idade',
                fontSize: 18,
              ),
              GuaipecaTextDefault(
                text: age,
                fontSize: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
