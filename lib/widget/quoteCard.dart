// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(quote.imgref),
            SizedBox(
              height: 5.0,
            ),
            Text(
              quote.quoteText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- ${quote.author}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                delete();
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(65, 85, 39, 1)),
              icon: Icon(Icons.delete),
              label: Text(
                'Delete Quote',
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
