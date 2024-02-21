import 'package:flutter/material.dart';
import '../components/inter_rank.dart' as internationalRank;
import '../components/local_rank.dart' as localRank;

class MyRank extends StatelessWidget {
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
             localRank.LocaliRank(),
            ],
          ),
        ),
      ),
    );
  }
}
