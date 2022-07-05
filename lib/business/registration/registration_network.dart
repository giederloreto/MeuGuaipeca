import 'package:meu_guaipeca/data/registration/registration_network_interface.dart';

class RegistrationBusiness {
  final IRegistrationNetwork _registrationNetwork;

  RegistrationBusiness(this._registrationNetwork);

  Future registration(email, password) async {
    _registrationNetwork.registration(email, password);
  }
}
