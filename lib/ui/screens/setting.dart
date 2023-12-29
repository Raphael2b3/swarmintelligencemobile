import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/active_server.dart';
import 'package:swarmintelligencemobile/states/server_list.dart';
import 'package:swarmintelligencemobile/ui/widgets/inputs/buttons/addbutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/server/server_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/cathegory.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  final serverlist = ServerList();

  @override
  Widget build(BuildContext context) {
    var activeServer = Provider.of<ActiveServer>(context);
    serverlist.sortServer(activeServer.active?.name ?? "");

    return ChangeNotifierProvider.value(
      value: serverlist,
      child: ListView(
        children: [
          Text(serverlist.servers.length.toString()),
          CathegoryCard(
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Server [${activeServer.active?.name ?? ""}]"),
                    AddButton(onPressed: () {
                      context.push("/settings/addserver");
                    })
                  ]),
              contents: serverlist.servers
                  .map<Widget>((e) => ServerCard(
                        server: e,
                        active: activeServer.active?.name == e.name,
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
