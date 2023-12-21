import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flick_flock/domain/film/film.dart';

class Repository {
  static const _filmsKey = 'films';

  static Future<List<Film>> getFilms() async {
    final res = await FirebaseFirestore.instance.collection(_filmsKey).get();
    return res.docs.map((doc) => Film.fromJson(doc.data())).toList();
  }
}
