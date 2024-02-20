import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/localirank.dart';
import 'login.dart';
import 'register.dart';
import 'indirank.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IndiRank(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'IndiRank': (context) => IndiRank(),
      'LocaliRank': (context) => LocaliRank(),
    },
  ));
}
