import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/default_textfield.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';

class ServerConnection extends StatelessWidget {
  ServerConnection({super.key});

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
    return DefaultCard(
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
        DefaultTextField(
          hintText: "Repeat Password...",
          obscureText: true,
        ),
        Votebutton(
          onClick: () {
            Provider.of<UserAuth>(context, listen: false).loggedIn = true;
            context.pop();
          },
          text: "Login",
        ),
      ],
    );
  }
}
