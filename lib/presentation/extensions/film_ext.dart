import 'package:flick_flock/domain/film/film.dart';
import 'package:flick_flock/presentation/style/images.dart';

extension FilmX on Film {
  String get imagePath => AppImages.getFilmPosterImage(key);
}
