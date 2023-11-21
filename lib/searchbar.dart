import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(37, 37, 37, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              style: TextStyle(fontSize: 18, color: Colors.white),
              maxLines: null,
              minLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Search...",
                contentPadding: EdgeInsets.only(left: 13, right: 10),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              cursorColor: Color(0xFFFFFFFF),
            ),
          ),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.clear)),
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(70))),
          )
        ],
      ),
    );
  }
}
