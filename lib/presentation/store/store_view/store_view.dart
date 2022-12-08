import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';

import '../../components/guaipeca_my_pet_card.dart';
import '../../components/guaipeca_product_card.dart';

class StoreView extends StatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.lightBlue[50],
        appBar: const GuaipecaAppBar(
          title: 'Loja',
          showBackIcon: false,
        ),
        bottomNavigationBar: const GuaipecaBottomBar(indexBottom: 3),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GuaipecaProductCard(
                      image:
                          'https://media.istockphoto.com/id/453486079/pt/foto/coleira-de-couro-de-cachorro-preto.jpg?s=1024x1024&w=is&k=20&c=jXurXFpC8tH-qfKWxxIElgBwwuSYNbDKMJnGwlZ9ueM=',
                      product: 'Coleira',
                      price: '100,00'),
                  GuaipecaProductCard(
                      image:
                          'https://media.istockphoto.com/id/835529390/pt/foto/bits-of-dog-food-and-treats-on-a-white-surface.jpg?s=1024x1024&w=is&k=20&c=Z2l26MPLoF92k64obUlZPZkntMN2r1cOFEc0NM_oDG4=',
                      product: 'Petiscos',
                      price: '20,00'),
                ],
              ),
              Row(
                children: [
                  GuaipecaProductCard(
                      image:
                          'https://media.istockphoto.com/id/1206234208/pt/foto/cute-dachshund-dog-black-and-tan-dressed-in-a-yellow-rain-coat-stands-in-a-puddle-on-a-city.jpg?s=612x612&w=is&k=20&c=RPh1C0swzlZHPV_KyiWPTSVWAaLLhYkQqo17Kx64d2U=',
                      product: 'Capa Chuva',
                      price: '80,00'),
                  GuaipecaProductCard(
                      image:
                          'https://media.istockphoto.com/id/516461357/pt/foto/engra%C3%A7ado-c%C3%A3o-pug-in-the-dog-house.jpg?s=612x612&w=is&k=20&c=7Kt-2_SbcO1ZA_jzixBNkp_BDsfviWd2kLXpYV_JYBs=',
                      product: 'Casa Pet',
                      price: '200,00'),
                ],
              ),
              Row(
                children: [
                  GuaipecaProductCard(
                      image:
                          'https://media.istockphoto.com/id/483617888/pt/foto/cute-little-terrier-vestindo-sapatos-de-neve.jpg?s=1024x1024&w=is&k=20&c=f2yCbindKfBFUCHm3_56nY-TcfA56kMPvjSWOStOqjg=',
                      product: 'Tenis Pet',
                      price: '49,90'),
                  GuaipecaProductCard(
                      image:
                          'https://media.istockphoto.com/id/523881776/pt/foto/seco-alimentos-para-animais-de-estima%C3%A7%C3%A3o.jpg?s=1024x1024&w=is&k=20&c=FAY_yEnWk93_R7N-Pn3qO-F0t6B2yqKCTdmfRCG0LKw=',
                      product: 'Ração Kg',
                      price: '10,00'),
                ],
              ),
            ],
          ),
        ));
  }
}
