import 'package:firebase_auth/firebase_auth.dart';
import 'package:flick_flock/presentation/pages/auth/widgets/auth_text_field.dart';
import 'package:flick_flock/presentation/pages/home/home_page.dart';
import 'package:flick_flock/presentation/pages/auth/widgets/auth_scaffold.dart';
import 'package:flick_flock/presentation/widgets/gradient_button.dart';
import 'package:flick_flock/presentation/widgets/snack_bar.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _login = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'Create Your\nAccount',
      form: [
        AuthTextField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onChanged: (text) {},
          label: 'Nickname',
        ),
        const SizedBox(height: 16),
        AuthTextField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onChanged: (text) => _login = text,
          label: 'Gmail',
        ),
        const SizedBox(height: 16),
        AuthTextField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          onChanged: (text) => _password = text,
          label: 'Password',
          obscureText: true,
          suffixIcon: Icons.visibility_off,
        ),
        const SizedBox(height: 16),
        AuthTextField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          onChanged: (text) {},
          label: 'Confirm Password',
          obscureText: true,
          suffixIcon: Icons.visibility_off,
        ),
        const Spacer(),
        GradientButton(
          onClick: () => _register(context),
          title: 'SIGN UP',
        ),
        const Spacer(),
      ],
    );
  }

  Future<void> _register(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _login,
        password: _password,
      );
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
      }
    } catch (e) {
      if (context.mounted) {
        showSnackBar(context, 'Failed to register');
      }
    }
  }
}
