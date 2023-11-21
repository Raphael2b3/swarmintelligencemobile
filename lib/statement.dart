import 'package:flutter/material.dart';

class Statement extends StatefulWidget {
  final String text;
  const Statement(
      {super.key,
      this.text = """Hier steht 
  irgend ein 
  krasser
  t
  e
  x
  t
  
  lol"""});

  @override
  State<Statement> createState() => _StatementState();
}

class _StatementState extends State<Statement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(13),
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(37, 37, 37, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(widget.text),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
