import 'package:flick_flock/presentation/style/colors.dart';
import 'package:flick_flock/presentation/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:flick_flock/presentation/pages/auth/login_page.dart';
import 'package:flick_flock/presentation/pages/auth/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.red, AppColors.purple],
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200),
              child: Icon(
                Icons.emergency_recording_rounded,
                color: Colors.white,
                size: 72,
              ),
            ),
            const SizedBox(height: 64),
            const Text(
              'Welcome to\nFlick Flock!',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 32),
            BaseButton(
              title: 'SIGN IN',
              textColor: Colors.white,
              overlayColor: Colors.white12,
              onClick: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
              ),
            ),
            const SizedBox(height: 32),
            BaseButton(
              title: 'SIGN UP',
              textColor: Colors.black,
              overlayColor: Colors.black12,
              backgroundColor: Colors.white,
              onClick: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()),
              ),
            ),
            const Spacer(),
            const Text(
              'Login with',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ), //
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, size: 48, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.facebook, size: 48, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.facebook, size: 48, color: Colors.white),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
