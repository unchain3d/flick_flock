import 'package:flick_flock/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const titleLarge = TextStyle(
    fontSize: 32,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const label = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.red,
  );

  static const buttonWhite = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  );

  static const descriptionGrey = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: Colors.white70,
  );

  static const descriptionPurple = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: AppColors.purple,
  );
}