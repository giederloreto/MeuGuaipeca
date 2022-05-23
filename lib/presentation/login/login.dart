import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/components/image_text_button.dart';
import 'package:meu_guaipeca/settings/strings.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: Image.asset(
                      'assets/images/logo05.png',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      hintText: Strings.strings.strEmail,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: !_isVisible,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                          color: Colors.black,
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          icon: _isVisible
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                )),
                      hintText: Strings.strings.senha,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Text(
                      Strings.strings.login,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    indent: 30,
                    endIndent: 30,
                  ),
                  ImageTextButton(
                    onPressed: () {},
                    imageHeight: 100,
                    text: Text(Strings.strings.loginWithGoogle),
                    path: 'assets/images/google.png',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Strings.strings.dontHaveAccount),
                      TextButton(
                        onPressed: () {},
                        child: Text(Strings.strings.subscribe),
                      ),
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
