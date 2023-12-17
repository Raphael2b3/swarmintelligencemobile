import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/active_server.dart';
import 'package:swarmintelligencemobile/states/server_list.dart';
import 'package:swarmintelligencemobile/ui/widgets/modelviews/server/server_card.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/cathegory.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
                    const Text("Server"),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add))
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
