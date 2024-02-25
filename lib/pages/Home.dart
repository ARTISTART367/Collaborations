import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart' as bottomNav;
import '../widgets/search_bar.dart' as search;
import '../components/user_top.dart' as topProfile;
import '../components/ContentCard.dart' as cc;
import 'appdrawer.dart'; // Import your AppDrawer here

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Scaffold(
        drawer: const AppDrawer(),
        backgroundColor: const Color(0xff231F20),
        appBar: AppBar(
          title: const Text('Hello David'),
          backgroundColor: const Color(0xff43766C),
          // Add the AppDrawer here
        ),
        body: Stack(
          children: [
            // const topProfile.User_top(),
            Container(
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Center(
                      child: search.SearchBar(),
                    ),
                  ),
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
            const bottomNav.Bottom_nav(pageindex: 0),
          ],
        ),
      ),
    );
  }
}
