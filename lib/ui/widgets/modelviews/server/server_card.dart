import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/models/app.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/clickable_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/votebutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';

class ServerCard extends StatefulWidget {
  final Server server;

  final bool active;
  final void Function(int index, bool value) onActivateChange;
  const ServerCard({
    super.key,
    required this.server,
    required this.onActivateChange,
    this.active = false,
  });

  @override
  State<ServerCard> createState() => _ServerCardState();
}

class _ServerCardState extends State<ServerCard> {
  late bool active;
  void setActive() {
    setState(() {
      active = !active;
    });
  }

  @override
  void initState() {
    super.initState();
    active = widget.active;
  }

  @override
  Widget build(BuildContext context) {
    return ClickableCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(right: 7),
              ),
              Text("${widget.active ? "(Active) " : ""}${widget.server.name}"),
            ],
          ),
          active
              ? Votebutton.down(onClick: setActive, text: "Deactivate")
              : Votebutton.up(
                  onClick: setActive,
                  text: "Activate",
                )
        ],
      ),
    );
  }
}
