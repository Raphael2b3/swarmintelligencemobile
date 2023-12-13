import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/default_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: Column(
        children: [
          Title(color: Colors.white, child: const Text("Login")),
          DefaultTextField(
            onClick: () {},
          )
        ],
      ),
    );
  }
}
