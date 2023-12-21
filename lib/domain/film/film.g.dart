// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilmImpl _$$FilmImplFromJson(Map<String, dynamic> json) => _$FilmImpl(
      key: json['key'] as String,
      title: json['title'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$FilmImplToJson(_$FilmImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'genres': instance.genres,
      'description': instance.description,
    };
