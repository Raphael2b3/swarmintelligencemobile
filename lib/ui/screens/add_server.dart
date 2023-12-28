import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/login_server_connection.dart';

class AddServerPage extends StatelessWidget {
  const AddServerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Add Server",
          style: TextStyle(fontSize: 20),
        ),
        Column(
          children: [LoginServerConnection()],
        )
      ],
    );
  }
}
