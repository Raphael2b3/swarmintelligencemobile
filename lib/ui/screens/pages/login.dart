import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/query.dart';
import 'package:swarmintelligencemobile/ui/widgets/statement/statementmoreoptions.dart';
import 'package:swarmintelligencemobile/ui/widgets/cathegoryselector.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/reloadbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/searchbar.dart';
import 'package:swarmintelligencemobile/constants/settings.dart';

import '../../widgets/statement/statement.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      child: Column(
        children: [
          Title(color: Colors.white, child: Text("Login")),
          Text("data"),
          Text("data"),
          Text("data")
        ],
      ),
    );
  }
}
