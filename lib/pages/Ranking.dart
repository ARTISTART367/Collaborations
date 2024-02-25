import 'package:flutter/material.dart';
import '../components/local_rank.dart' as localRank;

class MyRank extends StatelessWidget {
  const MyRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Scaffold(
        backgroundColor: Color(0xff231F20),
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
