import 'package:flutter/material.dart';
import 'appdrawer.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => Myappone();
}

class Myappone extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          title: const Text('Drawer for collaboratios'),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
