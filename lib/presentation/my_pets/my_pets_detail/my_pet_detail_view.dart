import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
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
      appBar: const GuaipecaAppBar(
        title: 'Meu Pet',
      ),
      body: Column(
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
        ],
      ),
    );
  }
}
