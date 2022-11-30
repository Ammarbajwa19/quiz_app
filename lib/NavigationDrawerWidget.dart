import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

import 'NavigationDrawerWidget.dart';

class NavigationDarwerWidget extends StatelessWidget {
  const NavigationDarwerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            buildMenuItem(
              text: 'People',
              icon: Icons.people,
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Favorite',
              icon: Icons.favorite,
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Workspace',
              icon: Icons.workspaces_outline,
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'update',
              icon: Icons.update,
            ),
            const SizedBox(
              height: 24,
            ),
            Divider(color: Colors.amber),
            const SizedBox(
              height: 24,
            ),
            buildMenuItem(
              text: 'Plugin',
              icon: Icons.account_tree_outlined,
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Notification',
              icon: Icons.notifications,
            ),
          ],
        ),
      ),
    );
  }

  buildMenuItem({required String text, required IconData icon}) {
    final Color = Colors.white;
    final hoverColor = Colors.white70;
    VoidCallback? onClicked;
    return ListTile(
      leading: Icon(
        icon,
        color: Color,
      ),
      title: Text(
        text,
        style: TextStyle(color: Color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
