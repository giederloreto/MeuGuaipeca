import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:meu_guaipeca/data/db_firestore/db_firestore.dart';
import 'package:meu_guaipeca/data/feed/feed_model.dart';

class CreateFeedViewModel extends ChangeNotifier {
  List<FeedModel>? _feedList;
  late FirebaseFirestore db;

  CreateFeedViewModel() {
    _startRepository();
  }

  _startRepository() async {
    await _startFirestore();
  }

  _startFirestore() {
    db = DBFirestore.get();
  }

  createFeed(List<FeedModel> feeds) {
    feeds.forEach((feed) async {
      if (!_feedList!.any((atual) => atual.author == feed.author)) {
        _feedList!.add(feed);
        await db.collection('UserPj/feed').doc(feed.author).set({
          'author': feed.author,
          'title': feed.title,
          'content': feed.content,
        });
      }
    });
  }
}
