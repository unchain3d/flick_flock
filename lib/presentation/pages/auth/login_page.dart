import 'package:firebase_auth/firebase_auth.dart';
import 'package:flick_flock/presentation/pages/auth/widgets/auth_scaffold.dart';
import 'package:flick_flock/presentation/pages/auth/widgets/auth_text_field.dart';
import 'package:flick_flock/presentation/pages/home/home_page.dart';
import 'package:flick_flock/presentation/style/text_styles.dart';
import 'package:flick_flock/presentation/widgets/gradient_button.dart';
import 'package:flick_flock/presentation/widgets/snack_bar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'Hello\nSign in!',
      form: [
        AuthTextField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onChanged: (text) => _email = text,
          label: 'Gmail',
        ),
        const SizedBox(height: 24),
        AuthTextField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          onChanged: (text) => _password = text,
          label: 'Password',
          obscureText: true,
          suffixIcon: Icons.visibility_off,
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerRight,
          child: Text('Forgot Password?', style: AppTextStyles.descriptionPurple),
        ),
        const Spacer(),
        GradientButton(
          onClick: () => _login(context),
          title: 'SIGN IN',
        ),
        const Spacer(),
      ],
    );
  }

  Future<void> _login(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email,
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
        showSnackBar(context, 'Failed to login');
      }
    }
  }
}
