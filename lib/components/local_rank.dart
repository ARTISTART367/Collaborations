import 'package:flutter/material.dart';
import '../components/inter_rank.dart';

class LocaliRank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rankings'),
      ),
      body: Container(
        width: 1000,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          OutlinedButton(
            child: Text('Individual Rankigs'),
            onPressed: () {
              Navigator.pushNamed(
                  context,
                  MaterialPageRoute(builder: (context) => IndiRank())
                  as String);
            },
          ),
          OutlinedButton(
            child: Text('Locality Ranking'),
            onPressed: () {
              Navigator.pushNamed(context, 'localirank');
            },
          ),
        ]),
      ),
    );
  }
}