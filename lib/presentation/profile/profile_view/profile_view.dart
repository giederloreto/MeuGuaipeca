import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_appbar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_bottom_bar.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_large_button.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';
import 'package:meu_guaipeca/settings/constants/constants.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      backgroundColor: terciaryColor,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                color: secundaryColor,
              ),
              const SizedBox(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1365197769/pt/vetorial/young-smiling-man-adam-avatar.jpg?s=612x612&w=is&k=20&c=J70dBnOEeIJfy7ZGS5gBi4Ne8brwP7BgqGO2ZOmZ47Y=',
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: const GuaipecaTextDefault(
              text: 'Gieder Loreto',
              fontSize: 16,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                GuaipecaTextDefault(
                  text: 'Minha Conta',
                  fontSize: 16,
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                GuaipecaTextDefault(
                  text: 'Alterar Senha',
                  fontSize: 16,
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                GuaipecaTextDefault(
                  text: 'FeedBack App',
                  fontSize: 16,
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                GuaipecaTextDefault(
                  text: 'Doações por Pix',
                  fontSize: 16,
                ),
                Spacer(),
                Icon(
                  Icons.attach_money,
                  size: 16,
                )
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: GuaipecaLargeButton(
              label: 'SAIR DO APP',
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                final _googleSignIn = GoogleSignIn();
                await _googleSignIn.signOut();
                Navigator.pushNamed(context, RoutesNames.LOGIN);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const GuaipecaBottomBar(indexBottom: 4),
    );
  }
}
