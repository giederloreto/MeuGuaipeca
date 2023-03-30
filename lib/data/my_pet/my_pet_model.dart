// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MyPetModel {
  final String url;
  final String nome;

  MyPetModel(this.url, this.nome);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'nome': nome,
    };
  }

  factory MyPetModel.fromMap(Map<String, dynamic> map) {
    return MyPetModel(
      map['url'] as String,
      map['nome'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyPetModel.fromJson(String source) =>
      MyPetModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
