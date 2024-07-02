import 'package:freezed_annotation/freezed_annotation.dart';

part 'release_date.freezed.dart';
part 'release_date.g.dart';

@freezed
class ReleaseDate with _$ReleaseDate {
  const factory ReleaseDate({
    required String release_date,
    required String id,
    required ExternalUrls external_urls,
  }) = _ReleaseDate;

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => _$ReleaseDateFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    required String spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) => _$ExternalUrlsFromJson(json);
}
