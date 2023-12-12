import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/cathegorybutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/clickabletext.dart';
import 'package:swarmintelligencemobile/ui/widgets/statement/statement.dart';
import 'package:swarmintelligencemobile/ui/widgets/userinformation.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void onFilterChange(int state) {}

  void onSearch(String query) {}
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserInformations(),
        CathegoryButton(
            text: "Login",
            onClick: () {
              context.go("/settings/login");
              setState(() {
                a++;
              });
            }),
        Text("data"),
        Text("data"),
      ],
    );
  }
}
