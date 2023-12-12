import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/clickabletext.dart';

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
        ClickableText(
            text: "Login $a",
            onClick: () {
              print("Hiiiiiiiiiiiiiiiiiiiiiiiiiiii");
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
