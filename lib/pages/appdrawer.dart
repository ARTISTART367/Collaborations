import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int _selected = 0;

  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('David James'),
            accountEmail: Text('David@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 17, 53, 1)),
          ),
          ListTile(
            selected: _selected == 0,
            leading: const Icon(Icons.science),
            title: const Text('DiscoverySphere'),
            onTap: () {
              changeSelected(0);
            },
          ),
          ListTile(
            selected: _selected == 1,
            leading: const Icon(Icons.money_off_rounded),
            title: const Text('TradeVista'),
            onTap: () {
              changeSelected(1);
            },
          ),
          ListTile(
            selected: _selected == 2,
            leading: const Icon(Icons.architecture),
            title: const Text('Creativium'),
            onTap: () {
              changeSelected(2);
            },
          ),
          ListTile(
            selected: _selected == 3,
            leading: const Icon(Icons.science),
            title: const Text('Students'),
            onTap: () {
              changeSelected(3);
            },
          ),
          ListTile(
            selected: _selected == 4,
            leading: const Icon(Icons.nature),
            title: const Text('NGOs'),
            onTap: () {
              changeSelected(4);
            },
          ),
          ListTile(
            selected: _selected == 5,
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              changeSelected(5);
            },
          ),
        ],
      ),
    );
  }
}
