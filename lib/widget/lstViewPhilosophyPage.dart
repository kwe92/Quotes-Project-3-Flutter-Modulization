import 'package:flutter/material.dart';
import 'package:quotesapp/widget/quoteCard.dart';
import 'package:quotesapp/network/model/listData.dart';

class ListViewPhilosophyPage extends StatefulWidget {
  const ListViewPhilosophyPage({Key? key}) : super(key: key);

  @override
  State<ListViewPhilosophyPage> createState() => _ListViewPhilosophyPageState();
}

class _ListViewPhilosophyPageState extends State<ListViewPhilosophyPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}
