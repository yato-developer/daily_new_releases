// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReleaseDate _$ReleaseDateFromJson(Map<String, dynamic> json) {
  return _ReleaseDate.fromJson(json);
}

/// @nodoc
mixin _$ReleaseDate {
  String get release_date => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  ExternalUrls get external_urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseDateCopyWith<ReleaseDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseDateCopyWith<$Res> {
  factory $ReleaseDateCopyWith(
          ReleaseDate value, $Res Function(ReleaseDate) then) =
      _$ReleaseDateCopyWithImpl<$Res, ReleaseDate>;
  @useResult
  $Res call({String release_date, String id, ExternalUrls external_urls});

  $ExternalUrlsCopyWith<$Res> get external_urls;
}

/// @nodoc
class _$ReleaseDateCopyWithImpl<$Res, $Val extends ReleaseDate>
    implements $ReleaseDateCopyWith<$Res> {
  _$ReleaseDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? release_date = null,
    Object? id = null,
    Object? external_urls = null,
  }) {
    return _then(_value.copyWith(
      release_date: null == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      external_urls: null == external_urls
          ? _value.external_urls
          : external_urls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get external_urls {
    return $ExternalUrlsCopyWith<$Res>(_value.external_urls, (value) {
      return _then(_value.copyWith(external_urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReleaseDateImplCopyWith<$Res>
    implements $ReleaseDateCopyWith<$Res> {
  factory _$$ReleaseDateImplCopyWith(
          _$ReleaseDateImpl value, $Res Function(_$ReleaseDateImpl) then) =
      __$$ReleaseDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String release_date, String id, ExternalUrls external_urls});

  @override
  $ExternalUrlsCopyWith<$Res> get external_urls;
}

/// @nodoc
class __$$ReleaseDateImplCopyWithImpl<$Res>
    extends _$ReleaseDateCopyWithImpl<$Res, _$ReleaseDateImpl>
    implements _$$ReleaseDateImplCopyWith<$Res> {
  __$$ReleaseDateImplCopyWithImpl(
      _$ReleaseDateImpl _value, $Res Function(_$ReleaseDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? release_date = null,
    Object? id = null,
    Object? external_urls = null,
  }) {
    return _then(_$ReleaseDateImpl(
      release_date: null == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      external_urls: null == external_urls
          ? _value.external_urls
          : external_urls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleaseDateImpl implements _ReleaseDate {
  const _$ReleaseDateImpl(
      {required this.release_date,
      required this.id,
      required this.external_urls});

  factory _$ReleaseDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseDateImplFromJson(json);

  @override
  final String release_date;
  @override
  final String id;
  @override
  final ExternalUrls external_urls;

  @override
  String toString() {
    return 'ReleaseDate(release_date: $release_date, id: $id, external_urls: $external_urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseDateImpl &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.external_urls, external_urls) ||
                other.external_urls == external_urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, release_date, id, external_urls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseDateImplCopyWith<_$ReleaseDateImpl> get copyWith =>
      __$$ReleaseDateImplCopyWithImpl<_$ReleaseDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseDateImplToJson(
      this,
    );
  }
}

abstract class _ReleaseDate implements ReleaseDate {
  const factory _ReleaseDate(
      {required final String release_date,
      required final String id,
      required final ExternalUrls external_urls}) = _$ReleaseDateImpl;

  factory _ReleaseDate.fromJson(Map<String, dynamic> json) =
      _$ReleaseDateImpl.fromJson;

  @override
  String get release_date;
  @override
  String get id;
  @override
  ExternalUrls get external_urls;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseDateImplCopyWith<_$ReleaseDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  String get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({String spotify});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_value.copyWith(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String spotify});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_$ExternalUrlsImpl(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({required this.spotify});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  final String spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls({required final String spotify}) =
      _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  String get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
