import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:meu_guaipeca/presentation/components/image_text_button.dart';
import 'package:meu_guaipeca/presentation/login/view_model/login_view_model.dart';
import 'package:meu_guaipeca/settings/Strings/strings.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

import '../../../settings/constants/constants.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginViewModel = GetIt.I<LoginViewModel>();
  late final AnimationController _controller;
  bool _isVisible = false;
  bool _isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final Future<LottieComposition> _composition;
  @override
  void initState() {
    super.initState();
    dataLoadFunction();
    //   _controller = AnimationController(vsync: this);
    _composition = _loadComposition();
  }

  dataLoadFunction() async {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(seconds: 2)).then((value) => setState(() {
          _isLoading = false;
        }));
  }

  Future<LottieComposition> _loadComposition() async {
    var assetData = await rootBundle.load('assets/images/dog-car-ride.json');
    return await LottieComposition.fromByteData(assetData);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return /* _isLoading
        ? Container(
            height: 44,
            color: Colors.transparent,
            child: const Center(child: CircularProgressIndicator()))
        : */
        Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                FutureBuilder<LottieComposition>(
                  future: _composition,
                  builder: (context, snapshot) {
                    var composition = snapshot.data;
                    if (composition != null) {
                      return Lottie.asset(
                          pathGiftLogin); //Lottie.asset('assets/images/dog-car-ride.json');
                    } else {
                      return  Center(
                          child:
                              CircularProgressIndicator()); //const Center(child: CircularProgressIndicator());
                    }
                  },
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
            Container(
              color: Colors.blueGrey[100],
              height: size.height * 0.55,
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      controller: _loginViewModel.emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Por favor preencha o email";
                        } else if (!value.contains('@')) {
                          return "Adiciona @";
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
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
                    TextFormField(
                      controller: _loginViewModel.passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Por favor preencha a senha";
                        }
                      },
                      keyboardType: TextInputType.text,
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
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
                          style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    /* SizedBox(
                      height: 50,
                      child: Card(
                        elevation: 8,
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          onTap: () async {
                            try {
                              if (_formKey.currentState!.validate()) {
                                await _loginViewModel.login(context);
                                log("Entrou IF");
                              }

                              log("FORA");
                            } on Exception catch (e) {
                              log("Não LOGOU porque? $e");
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
                    ), */
                    Container(
                      color: Colors.blueGrey[100],
                      child: ImageTextButton(
                        onPressed: () async {
                          await _loginViewModel.signInWithGoogle().then(
                              (value) => Navigator.pushNamedAndRemoveUntil(
                                  context, RoutesNames.HOME, (route) => false));
                        },
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
                    Row(
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
                            Navigator.pushNamed(
                                context, RoutesNames.REGISTERCHOOSE);
                          },
                          child: Text(
                            Strings.strings.subscribe,
                            style: TextStyle(color: Colors.blue[300]),
                          ),
                        ),
                      ],
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
                            Navigator.pushNamed(
                                context, RoutesNames.FORGETPASSWORD);
                          },
                          child: Text(
                            Strings.strings.resetPassword,
                            style: TextStyle(color: Colors.blue[300]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesNames.HOME);
                },
                child: Text('ir Home')),
          ],
        ),
      ),
    );
  }
}
