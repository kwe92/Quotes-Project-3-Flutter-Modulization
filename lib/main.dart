import 'package:flutter/material.dart';
import 'package:quotesapp/ui/categoryPage.dart';
import 'package:quotesapp/ui/philosophyPage.dart';

void main() {
  return runApp(
    MaterialApp(
      routes: {
        '/': (context) => CategoryPage(),
        '/philosophy': ((context) => PhilosophyPage())
      },
    ),
  );
}

/*

R

*/