import 'dart:convert';

class FeedModel {
  final String author;
  final String? img;
  final String title;
  final String content;
  FeedModel({
    required this.author,
     this.img,
    required this.title,
    required this.content,
  });

  

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'img': img,
      'title': title,
      'content': content,
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      author: map['author'] ?? '',
      img: map['img'],
      title: map['title'] ?? '',
      content: map['content'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FeedModel.fromJson(String source) => FeedModel.fromMap(json.decode(source));
}
