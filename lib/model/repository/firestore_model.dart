import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_new_releases/model/data_class/album/album.dart';

class FirestoreModel {
  final db = FirebaseFirestore.instance;

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
}
