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
            Image.asset(
                'lib/assets/The-Triumph-Of-Marcus-Aurelius-Ad-121-180.jpeg'),
            Text(quote.quoteText),
            SizedBox(
              height: 5,
            ),
            Text(
              '- ${quote.author}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                delete();
              },
              icon: Icon(Icons.delete),
              label: Text('Delete Quote'),
            )
          ],
        ),
      ),
    );
  }
}
