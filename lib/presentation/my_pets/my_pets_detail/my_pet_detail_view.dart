import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_add_medicine.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_form_field.dart';
import 'package:meu_guaipeca/settings/constants/constants.dart';
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
      backgroundColor: terciaryColor,
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
              padding:
                  const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GuaipecaTextDefault(
                    text: 'Oliver',
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
                    text: 'Bagé-RS',
                    fontSize: 14,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 172),
                    child: Icon(Icons.edit),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 32),
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            GuaipecaLargeButton(
              label: 'Adicionar Medicamentos',
              onTap: () {
                addMedicine();
              },
            ),
            const GuaipecaTextDefault(
              padding: EdgeInsets.only(top: 16),
              text: 'Medicamentos Aplicados:',
              fontSize: 12,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GuaipecaTextDefault(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        text: 'Medicamento',
                        fontSize: 10),
                    GuaipecaTextDefault(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        text: 'Data aplicada',
                        fontSize: 10),
                    GuaipecaTextDefault(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        text: 'Próxima Aplicação',
                        fontSize: 10),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GuaipecaTextDefault(
                        color: Colors.red[300],
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        text: 'Antivirose',
                        fontSize: 10),
                    GuaipecaTextDefault(
                        color: Colors.red[300],
                        padding: EdgeInsets.only(
                          top: 16,
                          left: 28,
                        ),
                        text: '05/09/2022',
                        fontSize: 10),
                    GuaipecaTextDefault(
                      color: Colors.red,
                      padding: EdgeInsets.only(
                        top: 16,
                        left: 34,
                      ),
                      text: '01/03/2023',
                      fontSize: 12,
                    ),
                    IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        size: 16,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(
                          right:
                              24), //                    padding: EdgeInsets.only(right: 16),
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GuaipecaTextDefault(
                        color: Colors.red[300],
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        text: 'Vermifugo',
                        fontSize: 10),
                    GuaipecaTextDefault(
                        color: Colors.red[300],
                        padding: EdgeInsets.only(
                          top: 16,
                          left: 28,
                        ),
                        text: '05/12/2022',
                        fontSize: 10),
                    GuaipecaTextDefault(
                      color: Colors.red,
                      padding: EdgeInsets.only(
                        top: 16,
                        left: 34,
                      ),
                      text: '04/03/2023',
                      fontSize: 12,
                    ),
                    IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        size: 16,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(
                          right:
                              24), //                    padding: EdgeInsets.only(right: 16),
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  addMedicine() {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Center(child: const Text('Medicamento')),
              content: Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const GuaipecaTextFormField(
                      label: "Nome do Medicamento",
                    ),
                    const GuaipecaTextFormField(
                      label: "Data",
                    ),
                    const GuaipecaTextFormField(
                      label: "próxima aplicação",
                    ),
                    GuaipecaLargeButton(
                      label: 'Salvar',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ));
  }
}
