import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
            child: Column(
          children: [
            Card(
              color: Colors.grey,
              child: Container(
                padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      "https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-scaled.jpg",
                      height: 150,
                      width: 250),
                      Text("Titulo"),
                      Text("subTitulo"),
                ],
              )),
            )
          ],
        )),
      ),
      bottomNavigationBar: const GuaipecaBottomBar(),
    );
  }
}
