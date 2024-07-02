// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReleaseDateImpl _$$ReleaseDateImplFromJson(Map<String, dynamic> json) =>
    _$ReleaseDateImpl(
      release_date: json['release_date'] as String,
      id: json['id'] as String,
      external_urls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReleaseDateImplToJson(_$ReleaseDateImpl instance) =>
    <String, dynamic>{
      'release_date': instance.release_date,
      'id': instance.id,
      'external_urls': instance.external_urls,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      spotify: json['spotify'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };
