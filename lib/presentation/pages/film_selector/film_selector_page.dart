import 'package:flick_flock/domain/film/film.dart';
import 'package:flick_flock/infrastructure/repository.dart';
import 'package:flick_flock/presentation/pages/film_selector/films_view.dart';
import 'package:flutter/material.dart';

class FilmSelectorPage extends StatelessWidget {
  const FilmSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Film>>(
        future: Repository.getFilms(),
        builder: (context, snapshot) => snapshot.hasData
            ? FilmsView(snapshot.data ?? [])
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
