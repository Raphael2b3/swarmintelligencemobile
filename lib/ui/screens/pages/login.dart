import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/default_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: Column(
        children: [
          Title(color: Colors.white, child: const Text("Login")),
          const DefaultTextField()
        ],
      ),
    );
  }
}
