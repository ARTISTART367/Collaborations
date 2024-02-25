import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart' as bottomNav;
import '../widgets/search_bar.dart' as search;
import '../components/user_top.dart' as topProfile;
import '../components/ContentCard.dart' as cc;
import 'NavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff231F20),
      body: Scaffold(
        drawer: const Navbar(),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const topProfile.User_top(),
            Container(
              child: const Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Center(
                        child: Center(
                          child: search.SearchBar(),
                        ),
                      )),
                ],
              ),
            ),
            const cc.ContentCard(),
            Container(
              margin: const EdgeInsets.only(left: 60, top: 235),
              child: const Text(
                'Latest Collaborations',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 60, top: 525),
              child: const Text(
                'Ideation Blogs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 560),
              child: const cc.ContentCard(),
            ),
            const bottomNav.Bottom_nav(),
          ],
        ),
      ),
    );
  }
}
