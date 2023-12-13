import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/cathegorybutton.dart';

class AuthorizationButton extends StatelessWidget {
  const AuthorizationButton({super.key});

  @override
  Widget build(BuildContext context) {
    UserAuth auth = Provider.of<UserAuth>(context);

    if (auth.loggedIn) {
      return CathegoryButton(
          onClick: () {
            auth.loggedIn = false;
          },
          text: "Logout");
    } else {
      return Column(
        children: [
          CathegoryButton(
              onClick: () {
                context.go("/settings/login");
              },
              text: "Login"),
          CathegoryButton(
              onClick: () {
                context.go("/settings/register");
              },
              text: "Register")
        ],
      );
    }
  }
}
