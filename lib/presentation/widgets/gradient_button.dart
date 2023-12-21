import 'package:flick_flock/presentation/style/colors.dart';
import 'package:flick_flock/presentation/style/text_styles.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onClick;
  final String title;

  const GradientButton({
    super.key,
    required this.onClick,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 56,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [AppColors.red, AppColors.purple],
          ),
        ),
        child: Text(title, style: AppTextStyles.buttonWhite),
      ),
    );
  }
}
