import 'package:flutter/material.dart';
import 'package:tictok_app/constants.dart';
import 'package:tictok_app/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tiktok Clone',
              style: TextStyle(
                  color: focusColor, fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: TextInputField(
                icon: Icons.email,
                hintText: 'Email',
                controller: _emailController,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: TextInputField(
                icon: Icons.password,
                hintText: 'Password',
                controller: _passwordController,
                isObscure: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: focusColor,
                      foregroundColor: backgroundColor,
                      minimumSize: const Size(double.infinity, 50)),
                  onPressed: () => debugPrint('login button clicked'),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(color: buttonColor, fontSize: 18),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
