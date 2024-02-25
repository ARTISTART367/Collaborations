import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/pages/profile.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/Home.dart';
import 'pages/Ranking.dart';
import 'pages/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => HomeScreen(),
      'ranking': (context) => MyRank(),
      'profile': (context) => Profile(),
    },
  ));
}
