import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: currentPageIndex,
          backgroundColor: const Color(0xff43766C),
          indicatorColor: const Color(0xffeddacf),
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              // pageRoute = label;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle),
              label: 'profile',
            ),
            NavigationDestination(
                icon: Icon(Icons.handshake), label: 'collaboration'),
            NavigationDestination(
              icon: Icon(Icons.mail_outline),
              label: 'inbox',
              selectedIcon: Icon(Icons.mail),
            )
          ],
        ),
        body: const Center(child: Text('Home')),
      ),
    );
  }
}
