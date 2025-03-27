import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_example/model/user_model.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = UserModel.of(context);

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(user.imgAvatar)),
            Row(children: [Text(user.name), Text(user.birthDate)]),
          ],
        ),
      ),
    );
  }
}
