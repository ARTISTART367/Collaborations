import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/home.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home': (context) => const Home(),
    },
  ));
}