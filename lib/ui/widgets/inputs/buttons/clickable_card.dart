import 'package:flutter/material.dart';

class ClickableCard extends StatelessWidget {
  final Widget child;
  final void Function() onClick;

  const ClickableCard({super.key, required this.child, required this.onClick});

  factory ClickableCard.coloumn(
      {key, required List<Widget> children, required onClick}) {
    return ClickableCard(
        key: key, onClick: onClick, child: Column(children: children));
  }

  factory ClickableCard.row(
          {key, required List<Widget> children, required onClick}) =>
      ClickableCard(key: key, onClick: onClick, child: Row(children: children));
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Material(
        elevation: 6,
        shadowColor: Colors.black,
        color: const Color.fromRGBO(37, 37, 37, 1),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onClick,
          child: Container(
            padding: const EdgeInsets.all(13),
            child: child,
          ),
        ),
      ),
    );
  }
}
