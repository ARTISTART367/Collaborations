import 'package:flutter/material.dart';

class IndiRank extends StatelessWidget {
  const IndiRank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Rohan', 'Raj', 'Jay'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rankings'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SizedBox(
        width: 1000,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: const Text('Individual Rankings'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IndiRank()),
                    );
                  },
                ),
                OutlinedButton(
                  child: const Text('Locality Ranking'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'localirank');
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text('$index'),
                    title: Text(arrNames[index]),
                    subtitle: Text('Number'),
                    trailing: Icon(Icons.numbers),
                  );
                },
                itemCount: arrNames.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 10, // Reduced height for the divider
                    thickness: 1,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
