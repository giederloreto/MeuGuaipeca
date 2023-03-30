import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meu_guaipeca/data/my_pet/imy_pet_network.dart';
import 'package:meu_guaipeca/data/my_pet/my_pet_model.dart';

class MyPetNetwork implements IMyPetNetWork {
  final firebaseInstance = FirebaseFirestore.instance;
  @override
  Future createMyPet(MyPetModel mypet) async {
    firebaseInstance.doc('pets').collection('pets');
  }
}
