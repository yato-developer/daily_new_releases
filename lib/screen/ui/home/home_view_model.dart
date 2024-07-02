import 'package:daily_new_releases/model/data_class/album/album.dart';
import 'package:daily_new_releases/model/repository/firestore_model.dart';

class HomeViewModel {
  final FirestoreModel _model = FirestoreModel();

  

  Stream<List<Album>> getAlbumData() {
    return _model.readCollection();
  }
}
