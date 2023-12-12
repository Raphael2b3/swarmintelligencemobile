import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/models/UserAuth.dart';
import 'package:swarmintelligencemobile/ui/widgets/buttons/cathegorybutton.dart';
import 'package:swarmintelligencemobile/ui/widgets/default_card.dart';

class UserInformations extends StatefulWidget {
  const UserInformations({super.key});

  @override
  State<UserInformations> createState() => _UserInformationsState();
}

class _UserInformationsState extends State<UserInformations> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserAuth>(
      builder: (context, value, child) {
        return DefaultCard(
          children: [
            Text("User Logged in ${value.loggedIn}"),
            CathegoryButton(
                onClick: () {
                  value.loggedIn = true;
                },
                text: "login"),
            CathegoryButton(
                onClick: () {
                  value.loggedIn = false;
                },
                text: "logout")
          ],
        );
      },
    );
  }
}
