import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/login_server_connection.dart';

class AddServerPage extends StatelessWidget {
  const AddServerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Add Server",
          style: TextStyles.highlighted,
        ),
        Column(
          children: [LoginServerConnection()],
        )
      ],
    );
  }
}
