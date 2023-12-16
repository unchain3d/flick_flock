import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final Color textColor;
  final Color overlayColor;
  final Color? backgroundColor;

  const BaseButton({
    super.key,
    required this.onClick,
    required this.title,
    required this.textColor,
    required this.overlayColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final bg = backgroundColor;

    return TextButton(
      onPressed: onClick,
      style: ButtonStyle(
        backgroundColor: bg == null ? null : MaterialStatePropertyAll(bg),
        overlayColor: MaterialStatePropertyAll(overlayColor),
        fixedSize: const MaterialStatePropertyAll(Size(320, 56)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
            side: const BorderSide(color: Colors.white),
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
