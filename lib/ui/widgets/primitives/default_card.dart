import 'package:flutter/cupertino.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;
  const DefaultCard({super.key, required this.child});

  factory DefaultCard.coloumn({key, required List<Widget> children}) {
    return DefaultCard(key: key, child: Column(children: children));
  }

  factory DefaultCard.row({key, required List<Widget> children}) {
    return DefaultCard(key: key, child: Row(children: children));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(13),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(37, 37, 37, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
