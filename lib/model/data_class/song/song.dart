import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

//曲の情報を格納する
@freezed
class Song with _$Song {
  const factory Song({
    required String name,
    @Default("") String preview_url,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}
