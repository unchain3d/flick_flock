// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Film _$FilmFromJson(Map<String, dynamic> json) {
  return _Film.fromJson(json);
}

/// @nodoc
mixin _$Film {
  String get key => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res, Film>;
  @useResult
  $Res call(
      {String key, String title, List<String> genres, String description});
}

/// @nodoc
class _$FilmCopyWithImpl<$Res, $Val extends Film>
    implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? title = null,
    Object? genres = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilmImplCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$$FilmImplCopyWith(
          _$FilmImpl value, $Res Function(_$FilmImpl) then) =
      __$$FilmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key, String title, List<String> genres, String description});
}

/// @nodoc
class __$$FilmImplCopyWithImpl<$Res>
    extends _$FilmCopyWithImpl<$Res, _$FilmImpl>
    implements _$$FilmImplCopyWith<$Res> {
  __$$FilmImplCopyWithImpl(_$FilmImpl _value, $Res Function(_$FilmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? title = null,
    Object? genres = null,
    Object? description = null,
  }) {
    return _then(_$FilmImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilmImpl implements _Film {
  const _$FilmImpl(
      {required this.key,
      required this.title,
      required final List<String> genres,
      required this.description})
      : _genres = genres;

  factory _$FilmImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilmImplFromJson(json);

  @override
  final String key;
  @override
  final String title;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String description;

  @override
  String toString() {
    return 'Film(key: $key, title: $title, genres: $genres, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilmImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, title,
      const DeepCollectionEquality().hash(_genres), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilmImplCopyWith<_$FilmImpl> get copyWith =>
      __$$FilmImplCopyWithImpl<_$FilmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilmImplToJson(
      this,
    );
  }
}

abstract class _Film implements Film {
  const factory _Film(
      {required final String key,
      required final String title,
      required final List<String> genres,
      required final String description}) = _$FilmImpl;

  factory _Film.fromJson(Map<String, dynamic> json) = _$FilmImpl.fromJson;

  @override
  String get key;
  @override
  String get title;
  @override
  List<String> get genres;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$FilmImplCopyWith<_$FilmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
