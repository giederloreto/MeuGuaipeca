import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/guaipeca_text_default.dart';
import 'package:meu_guaipeca/settings/constants/constants.dart';

class GuaipecaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? showBackIcon;
  const GuaipecaAppBar({required this.title, this.showBackIcon,  Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(40),
      child: AppBar(
        backgroundColor: primaryColor,
        title: GuaipecaTextDefault(
          text: title,
          fontSize: 18,
        ),
        centerTitle: true,
        automaticallyImplyLeading: showBackIcon ?? true,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    var deviceWidth = const Size.fromHeight(60);

    return deviceWidth;
  }
}
