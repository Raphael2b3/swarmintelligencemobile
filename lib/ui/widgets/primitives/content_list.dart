import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swarmintelligencemobile/constants/styles.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/statement/statement.dart';

class ContentList extends StatelessWidget {
  const ContentList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        backgroundColor: AppColors.highlightdark,
        color: AppColors.secondary,
        onRefresh: () async => print("refresh"),
        child: ListView.builder(
          padding: const EdgeInsets.all(6),
          itemCount: 100,
          itemBuilder: (context, index) =>
              const Statement(text: "geiler schei0"),
        ),
      ),
    );
  }
}
