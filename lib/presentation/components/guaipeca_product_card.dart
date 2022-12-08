import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

class GuaipecaProductCard extends StatelessWidget {
  final String image;
  final String product;
  final String price;
  final String? url;
  const GuaipecaProductCard(
      {Key? key,
      required this.image,
      required this.product,
      required this.price,
      this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 180,
      width: 150,
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
              height: 80,
              width: 80,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GuaipecaTextDefault(
                text: product,
                fontSize: 18,
              ),
            ],
          ),
          Row(
            children: [
              GuaipecaTextDefault(
                text: "R\$" + price,
                fontSize: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
