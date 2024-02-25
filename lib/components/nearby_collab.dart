import 'package:flutter/material.dart';

class nearCollabs extends StatelessWidget {
  const nearCollabs({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Build UI
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(),
          height: 100,
          color: Colors.transparent,
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 1,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                  child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.cyan),
              ));
            }),
          ),
        ),
      ),
    );
  }
}
