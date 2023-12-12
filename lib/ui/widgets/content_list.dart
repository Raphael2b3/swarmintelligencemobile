import 'package:flutter/cupertino.dart';
import 'package:swarmintelligencemobile/ui/widgets/statement/statement.dart';

class ContentList extends StatefulWidget {
  const ContentList({super.key});
  @override
  State<ContentList> createState() => _ContentListState();
}

class _ContentListState extends State<ContentList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => const Statement(text: "geiler schei0"),
      ),
    );
  }
}
