import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/default_textfield.dart';

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
        const DefaultTextField(
          hintText: "Username...",
        ),
        const DefaultTextField(
          hintText: "Password...",
          obscureText: true,
        ),
        const DefaultTextField(
          hintText: "Repeat Password...",
          obscureText: true,
        ),
        Votebutton(
          onClick: () {
            Provider.of<UserAuth>(context, listen: false).loggedIn = true;
            context.pop();
          },
          text: "Login",
        )
      ],
    );
  }
}
