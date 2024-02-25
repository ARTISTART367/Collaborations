import 'package:flutter/material.dart';
import '../components/inter_rank.dart';

class LocaliRank extends StatelessWidget {
  const LocaliRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rankings'),
      ),
      body: SizedBox(
        width: 1000,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          OutlinedButton(
            child: const Text('Individual Rankigs'),
            onPressed: () {
              Navigator.pushNamed(
                  context,
                  MaterialPageRoute(builder: (context) => const IndiRank())
                  as String);
            },
          ),
          OutlinedButton(
            child: const Text('Locality Ranking'),
            onPressed: () {
              Navigator.pushNamed(context, 'localirank');
            },
          ),
        ]),
      ),
    );
  }
}