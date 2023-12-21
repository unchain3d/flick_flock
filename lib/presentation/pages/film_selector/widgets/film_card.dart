import 'package:flick_flock/domain/film/film.dart';
import 'package:flick_flock/presentation/extensions/film_ext.dart';
import 'package:flick_flock/presentation/style/text_styles.dart';
import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  final Film film;

  const FilmCard(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(film.imagePath),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 26,
                    color: Colors.black.withOpacity(0.08),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 512,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black12.withOpacity(0),
                    Colors.black12.withOpacity(0.2),
                    Colors.black12.withOpacity(0.75),
                    Colors.black12.withOpacity(0.95),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(film.title, style: AppTextStyles.buttonWhite),
                const SizedBox(height: 8),
                Text(
                  film.description,
                  style: AppTextStyles.descriptionGrey,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                const SizedBox(height: 108),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
