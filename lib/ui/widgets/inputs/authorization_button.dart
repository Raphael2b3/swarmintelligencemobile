import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/cathegorybutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';

class AuthorizationButton extends StatelessWidget {
  const AuthorizationButton({super.key});

  @override
  Widget build(BuildContext context) {
    UserAuth auth = Provider.of<UserAuth>(context);

    if (auth.loggedIn) {
      return CathegoryButton(
          onClick: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog.adaptive(
                  backgroundColor: Colors.grey.shade900,
                  title: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                  content: const Text(
                    'Do you really want to logout?',
                  ),
                  actions: [
                    Votebutton.down(
                        onClick: () {
                          context.pop();
                        },
                        text: "No"),
                    Votebutton.up(
                        onClick: () {
                          auth.loggedIn = false;
                          context.pop();
                        },
                        text: "Logout"),
                  ],
                );
              },
            );
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
