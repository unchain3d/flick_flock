import 'package:flick_flock/presentation/style/text_styles.dart';
import 'package:flick_flock/presentation/widgets/gradient_scaffold.dart';
import 'package:flutter/material.dart';

class AuthScaffold extends StatelessWidget {
  final String title;
  final List<Widget> form;

  const AuthScaffold({
    super.key,
    required this.title,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64, left: 24),
            child: Text(title, style: AppTextStyles.titleLarge),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: form,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
