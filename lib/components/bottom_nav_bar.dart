import 'package:flutter/material.dart';

class Bottom_nav extends StatefulWidget {
  const Bottom_nav({super.key});

  @override
  _nav createState() =>  _nav();
}

class _nav extends State<Bottom_nav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: currentPageIndex,
          backgroundColor: const Color(0xff43766C),
          indicatorColor: const Color(0xffD6DAC8),
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              switch(index){
                case 0: Navigator.pushNamed(context, 'home');
                break;
                case 1: Navigator.pushNamed(context, 'profile');
                break;
                case 2: Navigator.pushNamed(context, 'home');
                break;
                case 3: Navigator.pushNamed(context, 'home');
                break;
                case 4: Navigator.pushNamed(context, 'ranking');
                break;
              }
              // pageRoute = label;
            });
          },
          destinations: const <Widget>[

            NavigationDestination(
              icon: Icon(Icons.home_outlined,size:35,),
              label: 'home',
              selectedIcon: Icon(Icons.home,size:35,),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle,size:35,),
              label: 'profile',
              selectedIcon: Icon(Icons.account_circle_outlined,size:35,),
            ),
            NavigationDestination(
                icon: Icon(Icons.handshake,size:35,),
                label: 'collaboration',
            ),
            NavigationDestination(
              icon: Icon(Icons.mail_outline,
              size:35,),
              label: 'inbox',
              selectedIcon: Icon(Icons.mail,
                size:35,),
            ),
            NavigationDestination(
                icon: Icon(Icons.star_purple500_outlined,size:40,), label: 'Ranking'),
          ],
        ),
        body: const Center(child: Text('')),
      ),
    );
  }
}