import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/models/app.dart';
import 'package:swarmintelligencemobile/states/active_server.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/clickable_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/expandable_card.dart';

class ServerCard extends StatefulWidget {
  final Server server;

  final bool active;
  const ServerCard({
    super.key,
    required this.server,
    this.active = false,
  });

  @override
  State<ServerCard> createState() => _ServerCardState();
}

class _ServerCardState extends State<ServerCard> {
  bool online = false;
  Timer? timer;
  void setOnline() {
    setState(() {
      online = Random().nextBool();
    });
  }

  @override
  void initState() {
    super.initState();
    timer =
        Timer.periodic(const Duration(seconds: 5), (Timer t) => setOnline());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var activeServer = Provider.of<ActiveServer>(context);
    return ExpandableCard(
      hiddenchild: const Placeholder(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: online ? Colors.lightGreen : Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(right: 7),
              ),
              Text("${widget.active ? "(Active) " : ""}${widget.server.name}"),
            ],
          ),
          if (!widget.active)
            Votebutton.up(
              onClick: () {
                activeServer.active = widget.server;
              },
              text: "Activate",
            )
        ],
      ),
    );
  }
}
