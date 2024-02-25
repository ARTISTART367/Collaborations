import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('David James'),
            accountEmail: Text('David@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 17, 53, 1)),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
          )
        ],
      ),
    );
  }
}
