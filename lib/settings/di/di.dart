import 'package:get_it/get_it.dart';
import 'package:meu_guaipeca/business/login/login_business.dart';
import 'package:meu_guaipeca/business/my_pet/my_pet_business.dart';
import 'package:meu_guaipeca/business/registration/registration_business.dart';
import 'package:meu_guaipeca/data/login/login_network.dart';
import 'package:meu_guaipeca/data/login/login_network_interface.dart';
import 'package:meu_guaipeca/data/my_pet/imy_pet_network.dart';
import 'package:meu_guaipeca/data/my_pet/my_pet_network.dart';
import 'package:meu_guaipeca/data/registration/registration_network.dart';
import 'package:meu_guaipeca/data/registration/registration_network_interface.dart';
import 'package:meu_guaipeca/presentation/login/view_model/login_view_model.dart';
import 'package:meu_guaipeca/presentation/my_pets/create_my_pet/create_my_pet_view_model.dart';
import 'package:meu_guaipeca/presentation/registration/view_model/register_cpf_view_model.dart';

final getIt = GetIt.instance;

class DependecyInjection {
  Future<void> configureDependencies() async {
    //   await _configureServices();
    await _configureData();
    await _configureBusiness();
    await _configurePresentation();
  }

  Future<void> _configureData() async {
    getIt.registerFactory<IRegistrationNetwork>(
      () => RegistrationNetwork(),
    );
    getIt.registerFactory<ILoginNetwork>(
      () => LoginNetwork(),
    );
    getIt.registerFactory<IMyPetNetWork>(
      () => MyPetNetwork(),
    );
  }

  Future<void> _configureBusiness() async {
    getIt.registerFactory<RegistrationBusiness>(
      () => RegistrationBusiness(getIt<IRegistrationNetwork>()),
    );
    getIt.registerFactory<LoginBusiness>(
      () => LoginBusiness(getIt<ILoginNetwork>()),
    );
    getIt.registerFactory<MyPetBusiness>(
      () => MyPetBusiness(getIt<IMyPetNetWork>()),
    );
  }

  Future<void> _configurePresentation() async {
    getIt.registerFactory<RegisterCpfViewModel>(
      () => RegisterCpfViewModel(
        getIt<RegistrationBusiness>(),
      ),
    );
    getIt.registerFactory<LoginViewModel>(
      () => LoginViewModel(
        getIt<LoginBusiness>(),
      ),
    );
    getIt.registerFactory<CreateMyPetViewModel>(
      () => CreateMyPetViewModel(
        getIt<MyPetBusiness>(),
      ),
    );
  }
}
