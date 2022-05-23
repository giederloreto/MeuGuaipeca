import 'package:flutter/material.dart';

class GuaipecaAppBar extends StatefulWidget implements PreferredSizeWidget {
  const GuaipecaAppBar({Key? key}) : super(key: key);

  @override
  State<GuaipecaAppBar> createState() => _GuaipecaAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    var deviceWidth = const Size.fromHeight(100);

    return deviceWidth;
  }
}

class _GuaipecaAppBarState extends State<GuaipecaAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
              backgroundColor: Colors.grey,
              maxRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
