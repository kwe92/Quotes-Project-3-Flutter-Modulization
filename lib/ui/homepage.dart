// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:quotesapp/widget/baseTemplate.dart';
import 'package:quotesapp/widget/lstViewPhilosophyPage.dart';
import 'package:flutter/material.dart';

class QuotesApp extends StatelessWidget {
  const QuotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
      pageBody: ListViewPhilosophyPage(),
    );
  }
}
