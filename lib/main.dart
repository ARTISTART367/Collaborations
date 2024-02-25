import 'package:flutter/material.dart';
import 'appdrawer.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => Myappone();
}

class Myappone extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: const Text('Drawer for collaboratios'),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
