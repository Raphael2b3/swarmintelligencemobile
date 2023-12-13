import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:swarmintelligencemobile/states/userauth.dart';
import 'package:swarmintelligencemobile/ui/widgets/primitives/default_card.dart';

class UserInformations extends StatelessWidget {
  const UserInformations({super.key});

  @override
  Widget build(BuildContext context) {
    UserAuth value = Provider.of<UserAuth>(context);

    return DefaultCard(
      children: [
        Text("User Logged in: ${value.loggedIn}"),
      ],
    );
  }
}
