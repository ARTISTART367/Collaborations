import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/localirank.dart';
import 'login.dart';
import 'register.dart';
import 'indirank.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const IndiRank(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'IndiRank': (context) => const IndiRank(),
      'LocaliRank': (context) => const LocaliRank(),
    },
  ));
}
