import 'package:flick_flock/domain/film/film.dart';
import 'package:flick_flock/presentation/pages/film_selector/widgets/bottom_buttons_row.dart';
import 'package:flick_flock/presentation/pages/film_selector/widgets/card_overlay.dart';
import 'package:flick_flock/presentation/pages/film_selector/widgets/film_card.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class FilmsView extends StatefulWidget {
  final List<Film> films;

  const FilmsView(this.films, {super.key});

  @override
  State<FilmsView> createState() => _FilmsViewState();
}

class _FilmsViewState extends State<FilmsView> {
  static const _directions = {
    SwipeDirection.left,
    SwipeDirection.up,
    SwipeDirection.right,
  };

  SwipableStackController? _controller;

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listener);
  }

  @override
  void dispose() {
    _controller?.removeListener(_listener);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SwipableStack(
                detectableSwipeDirections: _directions,
                controller: _controller,
                stackClipBehaviour: Clip.none,
                horizontalSwipeThreshold: 0.8,
                verticalSwipeThreshold: 0.8,
                builder: (_, props) {
                  final i = props.index % widget.films.length;

                  return Stack(
                    children: [
                      FilmCard(widget.films[i]),
                      if (props.stackIndex == 0 && props.direction != null)
                        CardOverlay(
                          swipeProgress: props.swipeProgress,
                          direction: props.direction!,
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
          BottomButtonsRow(
            onSwipe: (direction) {
              _controller?.next(swipeDirection: direction);
            },
            onRewindTap: _controller?.rewind ?? () {},
            canRewind: _controller?.canRewind ?? false,
          ),
        ],
      ),
    );
  }
}
