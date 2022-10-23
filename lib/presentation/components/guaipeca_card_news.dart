import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';

class GuaipecaCardNew extends StatelessWidget {
  final String image;
  final String title;
  final String authorName;
  final String authorImage;

  const GuaipecaCardNew(
      {Key? key,
      required this.image,
      required this.title,
      required this.authorName,
      required this.authorImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 250,
      width: 380,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(48),
          bottomRight: Radius.circular(48),
          topLeft: Radius.circular(48),
        ),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  height: 150,
                  width: 300,
                ),
              ),
            ],
          ),
          GuaipecaTextDefault(
            text: title,
            fontSize: 18,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(48.0),
                child: Image.network(
                  authorImage,
                  fit: BoxFit.cover,
                  height: 25,
                  width: 25,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GuaipecaTextDefault(
                text: authorName,
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
