// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meu_guaipeca/data/my_pet/imy_pet_network.dart';
import 'package:meu_guaipeca/data/my_pet/my_pet_model.dart';

class MyPetBusiness {
  final IMyPetNetWork _iMyPetNetWork;
  MyPetBusiness(
    this._iMyPetNetWork,
  );
  Future<void> createMyPet(MyPetModel pet) async {
    await _iMyPetNetWork.createMyPet(pet);
  }
}
