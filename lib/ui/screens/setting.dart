import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/server_list.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/server/server_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/cathegory.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/sub_card.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var serverlist = ServerList();

    return ChangeNotifierProvider.value(
      value: serverlist,
      child: Column(
        children: [
          Text(serverlist.servers.length.toString()),
          CathegoryCard(
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Server"),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add))
                  ]),
              contents: serverlist.servers
                  .map<Widget>((e) => ServerCard(
                        server: e,
                        onActivateChange: (_, __) {},
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
