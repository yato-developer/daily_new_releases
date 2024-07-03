import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_new_releases/model/data_class/album/album.dart';

class FirestoreModel {
  final db = FirebaseFirestore.instance;

  //アルバム情報を取得
  Stream<List<Album>> readCollection() {
    return db
        .collection('music')
        .doc('songs')
        .collection('new_release')
        .snapshots()
        .map((querySnapshot) => querySnapshot.docs
            .map((doc) => Album.fromJson(doc.data()))
            .toList());
  }

  //アルバムの消去(管理者のみ)
  Future<void> delete(String artist, album) async {
    await db
        .collection('music')
        .doc('songs')
        .collection('new_release')
        .doc("$artist $album")
        .delete();
  }
}


