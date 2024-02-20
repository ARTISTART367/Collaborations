import 'package:flutter/material.dart';

class IndiRank extends StatefulWidget {
  const IndiRank({Key? key}) : super(key: key);

  @override
  _IndiRankState createState() => _IndiRankState();

  class _IndiRankState extends State<IndiRank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rankings'),
      ),
      body: Row(children: [
        OutlinedButton(
          child: const Text('Individual Rankigs'),
          onPressed: () {
            Navigator.pushNamed(context, 'indirank');
          },
        ),
        OutlinedButton(
          child: const Text('Locality Ranking'),
          onPressed: () {
            Navigator.pushNamed(context, 'localirank');
          },
        ),
      ]),
    );
  }
}
}