import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({super.key});

  get kShadowColor => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.blue,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.white10,
            ),
          ],
        ),
        height: 250,
        width: 350,
        child: const Scaffold(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
