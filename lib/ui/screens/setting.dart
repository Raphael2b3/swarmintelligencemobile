import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/cathegorybutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/userinformation.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserInformations(),
        CathegoryButton(
            text: "Login",
            onClick: () {
              context.go("/settings/login");
            }),
        const Text("data"),
        const Text("data"),
      ],
    );
  }
}
