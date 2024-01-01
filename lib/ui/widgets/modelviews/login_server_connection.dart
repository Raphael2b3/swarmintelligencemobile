import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/default_textfield.dart';

class LoginServerConnection extends StatelessWidget {
  LoginServerConnection({super.key});

  final TextEditingController ip = TextEditingController();

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController password2 = TextEditingController();

  final TextEditingController servername = TextEditingController();
  bool validatePassword() {
    return password.text == password2.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        DefaultTextField(
          hintText: "Server name... [You decide]",
          controller: servername,
        ),
        DefaultTextField(
          hintText: "Server IP...",
          controller: ip,
        ),
        DefaultTextField(
          hintText: "Username...",
          controller: username,
        ),
        DefaultTextField(
          hintText: "Password...",
          obscureText: true,
        ),
        Votebutton(
          onClick: () {
            context.pop();
          },
          text: "Login",
        ),
      ],
    ));
  }
}
