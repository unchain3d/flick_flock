import 'package:flick_flock/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.red, AppColors.purple],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 56, left: 22),
              child: Text(
                'Create Your\nAccount',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 160),
            padding:  const EdgeInsets.fromLTRB(18, 24, 18, 0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.check, color: Colors.grey),
                    label: Text(
                      'Nickname',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.check,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Gmail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 55,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [AppColors.red, AppColors.purple],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
