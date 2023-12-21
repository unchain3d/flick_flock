import 'package:firebase_auth/firebase_auth.dart';
import 'package:flick_flock/presentation/pages/film_selector/film_selector_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FilmSelectorPage(),
            ),
          ),
          child: Text(
            'Start Film Matching',
            style: theme.textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
