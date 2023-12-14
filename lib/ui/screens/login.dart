import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Login",
          style: TextStyle(fontSize: 20),
        ),
        ListView()
      ],
    );
  }
}
