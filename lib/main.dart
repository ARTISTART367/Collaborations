import 'package:flutter/material.dart';
import 'package:gdsc_sol_challenge_00/pages/profile.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/Home.dart';
import 'pages/Ranking.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home':(context)=> const HomeScreen(),
      'ranking':(context)=>const MyRank(),
      'profile':(context)=>const Profile(),
    },
  ));
}