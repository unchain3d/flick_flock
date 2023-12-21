import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class BottomButtonsRow extends StatelessWidget {
  final bool canRewind;
  final VoidCallback onRewindTap;
  final ValueChanged<SwipeDirection> onSwipe;

  const BottomButtonsRow({
    required this.onRewindTap,
    required this.onSwipe,
    required this.canRewind,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: 128,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _BottomButton(
                color: canRewind ? Colors.amber : Colors.grey,
                onPressed: canRewind ? onRewindTap : null,
                child: const Icon(Icons.undo_rounded),
              ),
              _BottomButton(
                color: Colors.deepPurpleAccent,
                child: const Icon(Icons.star),
                onPressed: () => onSwipe(SwipeDirection.up),
              ),
              _BottomButton(
                color: Colors.redAccent,
                onPressed: () => onSwipe(SwipeDirection.left),
                child: const Icon(Icons.thumb_down_alt_rounded),
              ),
              _BottomButton(
                color: Colors.green,
                onPressed: () => onSwipe(SwipeDirection.right),
                child: const Icon(Icons.thumb_up_alt_rounded),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Icon child;
  final Color color;

  const _BottomButton({
    required this.onPressed,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      width: 72,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),
        child: child,
      ),
    );
  }
}

class SwipeDirectionColor {
  static const right = Color.fromRGBO(70, 195, 120, 1);
  static const left = Color.fromRGBO(220, 90, 108, 1);
  static const up = Color.fromRGBO(83, 170, 232, 1);
  static const down = Color.fromRGBO(154, 85, 215, 1);
}
