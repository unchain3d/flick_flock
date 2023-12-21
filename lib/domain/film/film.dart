import 'package:freezed_annotation/freezed_annotation.dart';

part 'film.freezed.dart';

part 'film.g.dart';

@Freezed(when: FreezedWhenOptions.none)
class Film with _$Film {
  const factory Film({
    required String key,
    required String title,
    required List<String> genres,
    required String description,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}
