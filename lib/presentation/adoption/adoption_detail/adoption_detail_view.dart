import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../components/guaipeca_large_button.dart';
import '../../components/guaipeca_text_default.dart';

class AdoptionDetailView extends StatefulWidget {
  const AdoptionDetailView({Key? key}) : super(key: key);

  @override
  State<AdoptionDetailView> createState() => _AdoptionDetailViewState();
}

class _AdoptionDetailViewState extends State<AdoptionDetailView> {
  final urlImage1 = [
    'https://media.istockphoto.com/photos/happy-dog-puppy-winking-an-eye-and-smiling-on-colored-blue-backgorund-picture-id1279308976?s=612x612',
    'https://media.istockphoto.com/photos/happy-dog-puppy-winking-an-eye-and-smiling-on-colored-blue-backgorund-picture-id1279308976?s=612x612'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GuaipecaAppBar(title: 'Pet para Adoção', showBackIcon: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              // width: 150,
              child: PhotoViewGallery.builder(
                  itemCount: urlImage1.length,
                  builder: (context, index) {
                    final urlImage = urlImage1[index];
                    return PhotoViewGalleryPageOptions(
                      imageProvider: NetworkImage(urlImage),
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.contained * 4,
                    );
                  }),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GuaipecaTextDefault(
                    text: 'Otto',
                    fontSize: 18,
                  ),
                  const Icon(
                    Icons.male,
                    size: 32,
                  )
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GuaipecaTextDefault(
                    text: 'Lhasa Apso',
                    fontSize: 18,
                  ),
                  const GuaipecaTextDefault(
                    text: '4 anos',
                    fontSize: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on),
                  const GuaipecaTextDefault(
                    text: 'Candiota-RS',
                    fontSize: 14,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 122),
                    child: Icon(Icons.edit),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 32),
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64, left: 64.0, right: 64),
              child: GuaipecaLargeButton(
                color: Colors.white70,
                label: 'Quero Adotar ❤',
                onTap: () {
                  sendEmailWantAdoption().then((value) => null);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future sendEmailWantAdoption() async {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: GuaipecaTextDefault(
          text: 'Entraremos em contato por e-mail para avaliação.',
          fontSize: 14,
        ),
        title: GuaipecaTextDefault(
          text: 'Quer mesmo adotar o Otto?',
          fontSize: 16,
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
          SizedBox(
            width: 60,
            height: 50,
          )
        ],
      ),
    );
  }
}
