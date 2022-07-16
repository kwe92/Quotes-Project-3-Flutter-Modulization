// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quotesapp/ui/homepage.dart';
import 'package:quotesapp/network/model/listData.dart';
import 'package:quotesapp/widget/quoteCard.dart';

// Need to add image property to quote class
// need to assign each quote the proper image

void main() {
  return runApp(
    MaterialApp(
      home: quotesApp(),
    ),
  );
}
