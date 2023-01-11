import 'package:flutter/material.dart';
import 'package:meu_guaipeca/presentation/adoption/adoption_view/adoption_view.dart';
import 'package:meu_guaipeca/presentation/forget_password/view/forget_password_view.dart';
import 'package:meu_guaipeca/presentation/home/feed_detail.dart';
import 'package:meu_guaipeca/presentation/home/home_view.dart';
import 'package:meu_guaipeca/presentation/login/view/login.dart';
import 'package:meu_guaipeca/presentation/my_pets/my_pets_view/my_pets_view.dart';
import 'package:meu_guaipeca/presentation/registration/view/register_choose_view.dart';
import 'package:meu_guaipeca/presentation/registration/view/register_cnpj_view.dart';
import 'package:meu_guaipeca/presentation/registration/view/register_cpf_view.dart';
import 'package:meu_guaipeca/presentation/splash/splash_view.dart';
import 'package:meu_guaipeca/settings/routes/routes_names.dart';

import '../../presentation/adoption/create_adoption/create_adoption_view/create_adoption_view.dart';
import '../../presentation/home/create_feed.dart';
import '../../presentation/my_pets/create_my_pet/create_my_pet.dart';
import '../../presentation/my_pets/my_pets_detail/my_pet_detail_view.dart';
import '../../presentation/profile/profile_view/profile_view.dart';
import '../../presentation/store/store_view/store_view.dart';

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
    RoutesNames.STORE: (context) => const StoreView(),
    RoutesNames.PROFILE: (context) => const ProfileView(),
    RoutesNames.FEED: (context) => const FeedDetail(),
    RoutesNames.MYPETDETAIL: (context) => const MyPetDetail(),
    RoutesNames.FEEDCREATE: (context) => const CreateFeed(),
    RoutesNames.CREATEMYPET: (context) => const CreateMyPet(),
    RoutesNames.CREATEADOPTION: (context) => const CreateAdoptionView(),
  };
}
