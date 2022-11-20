import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/adoption/adoption_view/adoption_view.dart';
import 'package:meu_guaipeca/presentation/forget_password/view/forget_password_view.dart';
import 'package:meu_guaipeca/presentation/home/home_view.dart';
import 'package:meu_guaipeca/presentation/login/view/login.dart';
import 'package:meu_guaipeca/presentation/my_pets/my_pets_view/my_pets_view.dart';
import 'package:meu_guaipeca/presentation/registration/view/register_choose_view.dart';
import 'package:meu_guaipeca/presentation/registration/view/register_cnpj_view.dart';
import 'package:meu_guaipeca/presentation/registration/view/register_cpf_view.dart';
import 'package:meu_guaipeca/presentation/splash/splash_view.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesNames.SPLASH: (context) => SplashView(),
    RoutesNames.REGISTERCHOOSE: (context) => RegisterChooseView(),
    RoutesNames.REGISTERCPF: (context) => const RegisterCpfView(),
    RoutesNames.REGISTERCNPJ: (context) => const RegisterCnpjView(),
    RoutesNames.FORGETPASSWORD: (context) => ForgetPasswordView(),
    RoutesNames.LOGIN: (context) => LoginView(),
    RoutesNames.HOME: (context) => const HomeView(),
    RoutesNames.MYPETS: (context) => const MyPetsView(),
    RoutesNames.ADOPTION: (context) => const AdoptionView(),
  };
}
