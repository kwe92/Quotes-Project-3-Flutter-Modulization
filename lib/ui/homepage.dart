// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quotesapp/main.dart';
import 'package:quotesapp/widget/quoteCard.dart';
import 'package:quotesapp/network/model/listData.dart';

class quotesApp extends StatefulWidget {
  quotesApp({Key? key}) : super(key: key);

  @override
  State<quotesApp> createState() => _quotesAppState();
}

class _quotesAppState extends State<quotesApp> {
  void delete(quote) {
    setState(() {
      quotesList.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: //Colors.grey[300],
          Color.fromRGBO(215, 215, 215, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(65, 85, 39, 1),
        title: Text(
          'Quotes App',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: ListView.builder(
        itemCount: quotesList.length,
        itemBuilder: (context, index) {
          final quote = quotesList[index];
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotesList.remove(quote);
                });
              });
        },
      ),
    ));
  }
}
