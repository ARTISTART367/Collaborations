import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart' as bottomNav;
import '../widgets/search_bar.dart' as search;
import '../components/user_top.dart'as topProfile;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        backgroundColor: const Color(0xff231F20),
        body: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              topProfile.User_top(),
              Container(
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 300),
                      child: Center(
                          child:Container(
                            color: Colors.amber,
                            height: 50,
                            width: 80,

                        ))),
                  ],
                ),
              ),
              bottomNav.Bottom_nav(),

            ],
          ),
        ),
      ),
    );
  }
}
