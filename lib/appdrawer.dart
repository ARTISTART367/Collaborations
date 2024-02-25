import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    // int _selected = 0;
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
            // selected: _selected == 0,
            leading: Icon(Icons.science),
            title: Text('DiscoverySphere'),
          ),
          ListTile(
            leading: Icon(Icons.money_off_rounded),
            title: Text('TradeVista'),
          ),
          ListTile(
            leading: Icon(Icons.architecture),
            title: Text('Creativium'),
          ),
          ListTile(
            leading: Icon(Icons.science),
            title: Text('Students'),
          ),
          ListTile(
            leading: Icon(Icons.nature),
            title: Text('NGOs'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
