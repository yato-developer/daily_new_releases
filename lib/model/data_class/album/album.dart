import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';
part 'album.g.dart';

//firebaseからのアルバム情報を格納する
@freezed
class Album with _$Album {
  const factory Album({
    required String album,
    required String artist,
    required String image,
    required String date,

  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}