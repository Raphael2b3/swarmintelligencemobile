import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 67,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(37, 37, 37, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(67),
                bottomRight: Radius.circular(67)),
          ),
          child: const TextField(
            style: TextStyle(fontSize: 18, color: Colors.white),
            maxLines: null,
            minLines: null,
            expands: true,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: "Search...",
              contentPadding: EdgeInsets.only(left: 13, right: 10),
              border: InputBorder.none,
            ),
            cursorColor: Color(0xFFFFFFFF),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(70))),
        )
      ],
    );
  }
}
