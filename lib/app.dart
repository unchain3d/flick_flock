import 'package:flick_flock/presentation/pages/auth/welcome_page.dart';
import 'package:flutter/material.dart';

import 'presentation/style/colors.dart';

class FlickFlockApp extends StatelessWidget {
  const FlickFlockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flick Flock',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.red),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
