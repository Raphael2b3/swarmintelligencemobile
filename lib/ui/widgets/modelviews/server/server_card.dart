import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/models/app.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';

class ServerCard extends StatelessWidget {
  final Server server;
  const ServerCard({super.key, required this.server});

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      children: [Text(server.name ?? "null")],
    );
  }
}
