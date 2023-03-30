import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meu_guaipeca/data/my_pet/imy_pet_network.dart';
import 'package:meu_guaipeca/data/my_pet/my_pet_model.dart';

class MyPetNetwork implements IMyPetNetWork {
  final CollectionReference petsCollection;

  MyPetNetwork()
      : petsCollection = FirebaseFirestore.instance.collection('pets');

  @override
  Future createMyPet(MyPetModel pet) async {
    var response = await petsCollection.add({
      'url': pet.url,
      'nome': pet.nome,
    });
  }
}
