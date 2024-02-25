import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/components/inter_rank.dart' as indirank;
// import '../components/local_rank.dart' as localRank;

class MyRank extends StatelessWidget {
  const MyRank({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: const Scaffold(
        backgroundColor: Color(0xff231F20),
        body: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              indirank.IndiRank(),
            ],
          ),
        ),
      ),
    );
  }
}
