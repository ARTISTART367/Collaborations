import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/components/bottom_nav_bar.dart'
    as bottomNav;
import '../widgets/search_bar.dart' as search;
import 'package:gdsc_sol_challenge_00/pages/appdrawer.dart';

class Collab extends StatelessWidget {
  const Collab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: const Color(0xff231F20),
      appBar: AppBar(
        title: const Text('Hello David'),
        backgroundColor: const Color(0xff43766C),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child:
                      Image.asset('assets/collab.jpg'), // Check your asset path
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: search.SearchBar(), // Corrected usage
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          child: Image.asset(
                              'assets/collbOne.jpg'), // Check your asset path
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          child: Image.asset(
                              'assets/collabTwo.jpg'), // Check your asset path
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          child: Image.asset(
                              'assets/collab.jpg'), // Check your asset path
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const bottomNav.Bottom_nav(pageindex: 2),
        ],
      ),
    );
  }
}
