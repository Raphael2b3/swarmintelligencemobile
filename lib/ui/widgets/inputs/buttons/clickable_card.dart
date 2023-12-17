import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';

class ClickableCard extends StatelessWidget {
  final Widget child;
  const ClickableCard({super.key, required this.child});
  factory ClickableCard.coloumn({key, required List<Widget> children}) {
    return ClickableCard(key: key, child: Column(children: children));
  }

  factory ClickableCard.row({key, required List<Widget> children}) {
    return ClickableCard(key: key, child: Row(children: children));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Material(
        color: const Color.fromRGBO(37, 37, 37, 1),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(13),
            child: child,
          ),
        ),
      ),
    );
  }
}
