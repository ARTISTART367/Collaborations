import 'package:flutter/material.dart';

class IndiRank extends StatelessWidget {
  const IndiRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rankings'),
        backgroundColor: Colors.amber,
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
