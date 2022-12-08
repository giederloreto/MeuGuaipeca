import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:meu_guaipeca/presentation/components/image_text_button.dart';
import 'package:meu_guaipeca/presentation/login/view_model/login_view_model.dart';
import 'package:meu_guaipeca/settings/Strings/strings.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with TickerProviderStateMixin {
  final _loginViewModel = GetIt.I<LoginViewModel>();
  late final AnimationController _controller;
  bool _isVisible = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  child: Lottie.asset('assets/images/dog-car-ride.json',
                      repeat: true,
                      ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Meu Guaipeca',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24.0, right: 24),
              child: TextFormField(
                controller: _loginViewModel.emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  label: Text(
                    Strings.strings.strEmail,
                    style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24.0, right: 24),
              child: TextFormField(
                controller: _loginViewModel.passwordController,
                keyboardType: TextInputType.text,
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white70,
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
                  label: Text(
                    Strings.strings.senha,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24.0, right: 24),
              child: SizedBox(
                height: 50,
                child: Card(
                  elevation: 8,
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () async {
                      try {
                        await _loginViewModel.login(context);

                        log("Logou VIEW");
                      } on Exception catch (e) {
                        log("Não LOGOU porque? $e");
                        Navigator.pushNamed(
                            context, RoutesNames.FORGETPASSWORD);
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          Strings.strings.login,
                          style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 24.0, right: 24),
              child: ImageTextButton(
                onPressed: () {},
                text: Text(
                  Strings.strings.loginWithGoogle,
                  style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                path: 'assets/images/google.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.strings.dontHaveAccount,
                    style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesNames.REGISTERCHOOSE);
                    },
                    child: Text(Strings.strings.subscribe),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.strings.forgetPassword,
                  style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.FORGETPASSWORD);
                  },
                  child: Text(Strings.strings.resetPassword),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
