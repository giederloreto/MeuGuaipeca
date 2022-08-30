import 'package:get_it/get_it.dart';
import 'package:meu_guaipeca/business/registration/registration_business.dart';
import 'package:meu_guaipeca/data/registration/registration_network.dart';
import 'package:meu_guaipeca/data/registration/registration_network_interface.dart';
import 'package:meu_guaipeca/presentation/login/view_model/login_view_model.dart';
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
  }

  Future<void> _configureBusiness() async {
    getIt.registerFactory<RegistrationBusiness>(
      () => RegistrationBusiness(getIt<IRegistrationNetwork>()),
    );
  }

  Future<void> _configurePresentation() async {
    getIt.registerFactory<RegisterCpfViewModel>(
      () => RegisterCpfViewModel(
        getIt<RegistrationBusiness>(),
      ),
    );
    getIt.registerFactory<LoginViewModel>(
      () => LoginViewModel(loginNetwork: loginNetwork),
    );
  }
}
