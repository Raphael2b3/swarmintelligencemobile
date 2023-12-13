import 'package:flutter/cupertino.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/statement/statement.dart';

class ContentList extends StatelessWidget {
  const ContentList({super.key});
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
