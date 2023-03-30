import 'package:flutter/material.dart';
import 'package:meu_guaipeca/business/my_pet/my_pet_business.dart';
import 'package:meu_guaipeca/data/my_pet/my_pet_model.dart';

class CreateMyPetViewModel {
  final MyPetBusiness _myPetBusiness;
  CreateMyPetViewModel(this._myPetBusiness);

  TextEditingController nameController = TextEditingController();

  Future<void> createMyPet() async {
    var pet1 = MyPetModel('', nameController.text);
    await _myPetBusiness.createMyPet(pet1);
  }
}
