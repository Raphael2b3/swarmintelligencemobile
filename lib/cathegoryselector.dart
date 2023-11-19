import 'package:flutter/material.dart';

class Cathegoryselector extends StatefulWidget {
  const Cathegoryselector({Key? key}) : super(key: key);

  @override
  _CathegoryselectorState createState() => _CathegoryselectorState();
}

class _CathegoryselectorState extends State<Cathegoryselector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      child:
          Stack(alignment: Alignment.center, fit: StackFit.expand, children: [
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context, i) => Center(
              child: Text(
            "fdsf",
          )),
        ),
      ]),
    );
  }
}
