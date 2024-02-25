import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/components/bottom_nav_bar.dart'
    as bottomNav;
import '../widgets/search_bar.dart' as search;
import 'package:gdsc_sol_challenge_00/pages/appdrawer.dart';

class Collab extends StatelessWidget {
  const Collab({Key? key});

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
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: search.SearchBar(), // Corrected usage
                  ),
                ),
              ],
            ),
          ),
          const bottomNav.Bottom_nav(pageindex: 2),
        ],
      ),
    );
  }
}
