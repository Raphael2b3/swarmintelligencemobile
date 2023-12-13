import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/userinformation.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInformations(),
        Text("data"),
        Text("data"),
      ],
    );
  }
}
