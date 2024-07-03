import 'package:daily_new_releases/model/data_class/song/song.dart';
import 'package:daily_new_releases/model/repository/firestore_model.dart';
import 'package:daily_new_releases/model/repository/request_api.dart';

class AlbumInfoViewModel {
  final RequestModel _requestModel = RequestModel();
  final FirestoreModel _firestoreModel = FirestoreModel();

  List<Song>? _musicData;

  Future<List<Song>?> getAlbumInfo(String album, id) async {
    _musicData = await _requestModel.searchAlbum(album, id);
    return _musicData;
  }

  Future deleteAlbum(String artist, album) async {
    await _firestoreModel.delete(artist,album);
  }
}
