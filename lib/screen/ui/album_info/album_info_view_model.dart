import 'package:daily_new_releases/model/data_class/song/song.dart';
import 'package:daily_new_releases/model/repository/request_api.dart';


class AlbumInfoViewModel {
  final RequestModel _model = RequestModel();

  List<Song>? _musicData;

  Future<List<Song>?> getAlbumInfo(String album, id) async {
    _musicData = await _model.searchAlbum(album,id);
    return _musicData;
  }
}
