import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/user_top.dart'as topProfile;
import '../components/bottom_nav_bar.dart' as bottomNav;
class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return const Scaffold(
    backgroundColor: Color(0xff231F20),
    body: Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
    children: [
      Column(
        children:[
          topProfile.User_top(),
          Row(children: [
            Text('Ranking')
          ],)
      ],
      ),
      bottomNav.Bottom_nav(),
    ],
    ),
    ),
    );
  }
}
