import 'package:meu_guaipeca/data/my_pet/my_pet_model.dart';

abstract class IMyPetNetWork {
  Future createMyPet(MyPetModel mypet) async {}
}
