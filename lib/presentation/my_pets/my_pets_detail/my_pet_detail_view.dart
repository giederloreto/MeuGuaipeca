import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MyPetDetail extends StatefulWidget {
  const MyPetDetail({Key? key}) : super(key: key);

  @override
  State<MyPetDetail> createState() => _MyPetDetailState();
}

class _MyPetDetailState extends State<MyPetDetail> {
  final urlImage1 = [
    'https://static3.depositphotos.com/1006075/220/i/600/depositphotos_2201124-stock-photo-lhasa-apso.jpg',
    'https://media.istockphoto.com/id/531885151/pt/foto/lhasa-apso-retrato.jpg?s=612x612&w=is&k=20&c=aAdXtEMfefrbt1RZ42qFUnbRCS8SWtGvyxZEzDY4fuE='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: const GuaipecaAppBar(
        title: 'Meu Pet',
      ),
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
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GuaipecaTextDefault(
                    text: 'Oliver',
                    fontSize: 18,
                  ),
                  Icon(
                    Icons.male,
                    size: 32,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GuaipecaTextDefault(
                    text: 'Lhasa Apso',
                    fontSize: 18,
                  ),
                  GuaipecaTextDefault(
                    text: '4 anos',
                    fontSize: 18,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on),
                  GuaipecaTextDefault(
                    text: 'Bagé-RS',
                    fontSize: 14,
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              color: Colors.yellow,
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GuaipecaTextDefault(
                        text: 'Meus Medicamentos',
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.87,
                        height: 50,
                        child: GuaipecaTextFormField(label: 'Nome'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 50,
                        child: GuaipecaTextFormField(label: 'Data'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 50,
                        child: GuaipecaTextFormField(label: 'Próxima'),
                      ),
                      Container(
                          width: 85,
                          child: GuaipecaLargeButton(
                            label: 'Salvar',
                            color: Colors.blue,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
