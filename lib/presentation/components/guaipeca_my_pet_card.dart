import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

class GuaipecaMyPetCard extends StatelessWidget {
  final String image;
  final String name;
  final String age;
  final double? width;
  final double? height;
  final double? fontSize;
  final bool? dontShowCity;
  const GuaipecaMyPetCard(
      {required this.image,
      required this.name,
      required this.age,
      this.height,
      this.width,
      this.fontSize,
      this.dontShowCity,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
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
              height: height ?? 150,
              width: width ?? 300,
            ),
          ),
          Row(
            children: [
              GuaipecaTextDefault(
                text: 'Nome: ',
                fontSize: fontSize ?? 18,
              ),
              GuaipecaTextDefault(
                text: name,
                fontSize: fontSize ?? 18,
              ),
            ],
          ),
          Row(
            children: [
              GuaipecaTextDefault(
                text: 'Idade: ',
                fontSize: fontSize ?? 18,
              ),
              GuaipecaTextDefault(
                text: age == '1' ? age + ' ano' : age + ' anos',
                fontSize: fontSize ?? 18,
              ),
            ],
          ),
          Offstage(
            offstage: dontShowCity ?? true,
            child: Row(
              children: [
                const Icon(Icons.location_on),
                GuaipecaTextDefault(
                  text: 'Candiota-RS',
                  fontSize: fontSize ?? 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
